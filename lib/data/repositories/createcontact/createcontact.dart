import 'dart:developer';

import 'package:chatapp/data/failures/failures.dart';
import 'package:chatapp/data/models/createuser/createuser.dart';
import 'package:chatapp/data/repositories/repositories.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICreatUserRepo)
class CreateContactRepo implements ICreatUserRepo {
  @override
  Future<Either<MainFailures, String>> creatcontact(
      Createuser createuser) async {
    try {
      final userid = FirebaseAuth.instance.currentUser!.uid;
      await FirebaseFirestore.instance
          .collection('Contacts')
          .doc(userid)
          .collection('user-contacts')
          .add(
            (createuser.toJson()),
          )
          .then((value) {
        return right('success');
      });
      return right('success');
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }
}
