part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.checkuserexistevent({required String email}) =
      _checkuserexistevent;
  const factory SignupEvent.signupevent({required SignupModel signupModel}) =
      _signupevent;
}
