import 'package:chatapp/data/failures/failures.dart';
import 'package:chatapp/data/models/createuser/createuser.dart';
import 'package:chatapp/data/models/login_model/login_model.dart';
import 'package:chatapp/data/models/signup/signup_model/signup_model.dart';
import 'package:dartz/dartz.dart';

abstract class ISignupRepo {
  Future<Either<MainFailures, bool>> checkuserexist(String email);
  Future<Either<MainFailures, bool>> signup(SignupModel signupModel);
}

abstract class ILoginRepo {
  Future<Either<MainFailures, String>> login(LoginModel loginModel);
}

abstract class ICreatUserRepo {
  Future<Either<MainFailures, String>> creatcontact(Createuser createuser);
}