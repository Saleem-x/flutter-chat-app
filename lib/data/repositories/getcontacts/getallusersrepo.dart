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
      final snapshot = await firestore.collection('users').get();

      List<AccountInfo> allusers = snapshot.docs
          .where((element) => element['userid'] != user!.uid)
          .map((doc) {
        return AccountInfo.fromJson(doc.data());
      }).toList();
      return right(allusers);
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
