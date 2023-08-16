import 'dart:convert';

import 'package:chatapp/data/failures/failures.dart';
import 'package:chatapp/data/models/message_model/message_model.dart';
import 'package:chatapp/data/repositories/repositories.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:crypto/crypto.dart';

@LazySingleton(as: IMessageRepo)
class MessagesRepo implements IMessageRepo {
  @override
  Future<Either<MainFailures, List<MessageModel>>> getallmessages(
      String mail, String uniqueid) async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      final user = FirebaseAuth.instance.currentUser;
      final snapshot = await firestore
          .collection('Chats')
          .doc(user!.uid)
          .collection(mail)
          .orderBy('date')
          .get();
      List<MessageModel> messagelist = snapshot.docs.map((doc) {
        return MessageModel.fromJson(doc.data());
      }).toList();
      return right(messagelist);
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }

  @override
  Future<Either<MainFailures, String>> sendmessage(
      MessageModel message, String uniqueid) async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      final user = FirebaseAuth.instance.currentUser;
      // final uniqueid = generateUniqueId(user!.email!, message.toEmail!);
      firestore
          .collection('Chats')
          .doc(uniqueid)
          .collection('messages')
          .add(message.toJson());
      final touser =
          await firestore.collection('users').doc(message.toEmail).get();
      final name = touser.data()!['name'];
      final profileimg = touser.data()!['profileimage'];

      /*  firestore.collection('contacted').doc(message.toEmail).set({
        "name": name,
        "profileimage": profileimg,
        "lastmessage": message.message,
        "tomail": message.toEmail,
        "time": '${DateTime.now().hour}:${DateTime.now().minute}'
      }); */
      await firestore
          .collection('contacted')
          .doc(user!.uid)
          .collection('chatrooms')
          .doc(user.email)
          .set({
        "name": name,
        "profileimage": profileimg,
        "lastmessage": message.message,
        "tomail": message.toEmail,
        "chat-id": uniqueid,
        "time": '${DateTime.now().hour}:${DateTime.now().minute}'
      });

      return right('success');
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }

  Stream<List<MessageModel>> getMessageStream(String mail, String? uniqueid) {
    // final user = FirebaseAuth.instance.currentUser;
    return FirebaseFirestore.instance
        .collection('Chats')
        .doc(uniqueid)
        .collection('messages')
        .orderBy('date')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((doc) {
        return MessageModel.fromJson(doc.data());
      }).toList();
    });
  }
}

String generateUniqueId(String str1, String str2) {
  String combinedString = "$str1|$str2";
  List<int> bytes = utf8.encode(combinedString);
  Digest digest = sha1.convert(bytes);

  return digest.toString();
}
