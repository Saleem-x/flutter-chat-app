import 'dart:developer';

import 'package:chatapp/data/failures/failures.dart';
import 'package:chatapp/data/models/signup/signup_model/signup_model.dart';
import 'package:chatapp/data/repositories/repositories.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: ISignupRepo)
class SignupRepoImpl implements ISignupRepo {
  @override
  Future<Either<MainFailures, bool>> signup(SignupModel signupModel) async {
    try {
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: signupModel.email!,
        password: signupModel.password!,
      );

      // log(jsonEncode(userCredential));
      User user = userCredential.user!;
      if (userCredential.user == null) {
        return left(const MainFailures.serverfailure());
      } else {
        final sharedprefs = await SharedPreferences.getInstance();
        sharedprefs.setBool('userin', true);
        await firestore.collection('users').doc(user.email).set({
          'name': signupModel.userName,
          'profileimage': 'no-img',
          'email': signupModel.email,
          'userid': user.uid,
        });
        return right(true);
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailures.clientfailure());
    }
  }

  @override
  Future<Either<MainFailures, bool>> checkuserexist(String email) async {
    try {
      List<String> signInMethods =
          await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);
      log(signInMethods.toString());
      return right(signInMethods.isNotEmpty);
    } catch (e) {
      log(e.toString());
      return left(const MainFailures.clientfailure());
    }
  }
}
