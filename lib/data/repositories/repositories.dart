import 'package:chatapp/data/failures/failures.dart';
import 'package:chatapp/data/models/createuser/createuser.dart';
import 'package:chatapp/data/models/get_contacts_model/get_contacts_model.dart';
import 'package:chatapp/data/models/login_model/login_model.dart';
import 'package:chatapp/data/models/message_model/message_model.dart';
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

abstract class IGetContactsrepo {
  Future<Either<MainFailures, List<GetContactsModel>>> getallcontacts();
}

abstract class IMessageRepo {
  Future<Either<MainFailures, String>> sendmessage(
      MessageModel message, String uniqueid);
  Future<Either<MainFailures, List<MessageModel>>> getallmessages(
      String mail, String uniqueid);
}
