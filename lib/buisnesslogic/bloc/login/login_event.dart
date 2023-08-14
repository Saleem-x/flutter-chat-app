part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.userloginevent({required LoginModel loginModel}) =
      _userloginevent;
}
