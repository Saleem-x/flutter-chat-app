import 'package:chatapp/data/failures/failures.dart';
import 'package:chatapp/data/models/account_info/account_info.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';

class AccountinfoRepo {
  Future<Either<MainFailures, AccountInfo>> getaccountinfo() async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    try {
      final user = firebaseAuth.currentUser;
      final snapshot =
          await firestore.collection('users').doc(user!.email).get();

      if (snapshot.exists) {
        return right(AccountInfo.fromJson(snapshot.data()!));
      } else {
        return left(const MainFailures.serverfailure());
      }
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }

  Future<Either<MainFailures, AccountInfo>> updatedata(
      AccountInfo accountInfo) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    try {
      final user = firebaseAuth.currentUser;
      await firestore
          .collection('users')
          .doc(user!.email)
          .update({accountInfo.toJson()} as Map<String, dynamic>)
          // ignore: void_checks
          .onError((error, stackTrace) {
        return left(const MainFailures.clientfailure());
      });

      final snapshot =
          await firestore.collection('users').doc(user.email).get();

      if (snapshot.exists) {
        return right(AccountInfo.fromJson(snapshot.data()!));
      } else {
        return left(const MainFailures.serverfailure());
      }
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }

  Future<Either<MainFailures, String>> pickimage() async {
    try {
      final imagepicker = ImagePicker();
      XFile? imagepath =
          await imagepicker.pickImage(source: ImageSource.gallery);
      if (imagepath != null) {
        return right(imagepath.path);
      } else {
        return right('no-img');
      }
    } catch (e) {
      return left(const MainFailures.clientfailure());
    }
  }
}
