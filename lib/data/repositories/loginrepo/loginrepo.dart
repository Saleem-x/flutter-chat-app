import 'dart:developer';

import 'package:chatapp/data/failures/failures.dart';
import 'package:chatapp/data/models/login_model/login_model.dart';
import 'package:chatapp/data/repositories/repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: ILoginRepo)
class LoginRepoImpl implements ILoginRepo {
  @override
  Future<Either<MainFailures, String>> login(LoginModel loginModel) async {
    try {
      await FirebaseAuth.instance.signOut();
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: loginModel.email!,
        password: loginModel.password!,
      );
      if (userCredential.user == null) {
        return left(const MainFailures.clientfailure());
      } else {
        final sharedprefs = await SharedPreferences.getInstance();
        sharedprefs.setBool('userin', true);
        return right('success');
      }
    } catch (e) {
      log('$e');
      if (e.toString() ==
          '[firebase_auth/wrong-password] The password is invalid or the user does not have a password.') {
        return right('password Not matching');
      } else if (e.toString() ==
          '[firebase_auth/user-not-found] There is no user record corresponding to this identifier. The user may have been deleted.') {
        return left(const Serverfailure());
      } else if (e.toString() ==
          '[firebase_auth/network-request-failed] A network error (such as timeout, interrupted connection or unreachable host) has occurred.') {
        return right('Network failure');
      } else {
        return right('No User Exist in this email');
      }
    }
  }
}
