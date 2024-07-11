import 'dart:developer';

import 'package:chatapp/data/failures/failures.dart';
import 'package:chatapp/data/models/account_info/account_info.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GetAallUsersRepo {
  Future<Either<MainFailures, List<AccountInfo>>> getallusers() async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        return left(const MainFailures.clientfailure());
      }

      // Fetch all users
      final allUsersSnapshot = await firestore.collection('users').get();
      List<AccountInfo> allUsers = allUsersSnapshot.docs
          .map((doc) => AccountInfo.fromJson(doc.data()))
          .toList();

      // Fetch interacted users
      final interactedUsersSnapshot = await firestore
          .collection('Chats')
          .where('frommail', isEqualTo: user.email)
          .get();
      final interactedUsersSnapshot2 = await firestore
          .collection('Chats')
          .where('tomail', isEqualTo: user.email)
          .get();

      List<String> interactedUserIds = interactedUsersSnapshot.docs
          .map((doc) => doc['tomail'] as String)
          .toList();
      interactedUserIds.addAll(interactedUsersSnapshot2.docs
          .map((doc) => doc['frommail'] as String)
          .toList());

      // Filter out the interacted users from all users
      List<AccountInfo> uninteractedUsers = allUsers.where((account) {
        return account.useruid != user.uid &&
            !interactedUserIds.contains(account.email);
      }).toList();

      return right(uninteractedUsers);
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }

  String getuniquechatkey(String? fuid) {
    final user = FirebaseAuth.instance.currentUser;
    String fuserid = fuid!.replaceAll(RegExp(r'[^0-9]'), '');
    String cuserid = user!.uid.replaceAll(RegExp(r'[^0-9]'), '');
    String uniquechatkey = fuserid + cuserid;
    log(uniquechatkey);
    return uniquechatkey;
  }

  Stream<String> getuserprofilephotos(String email) {
    return FirebaseFirestore.instance
        .collection('users')
        .doc(email)
        .snapshots()
        .map((event) => event['profileimage']);
  }
}
