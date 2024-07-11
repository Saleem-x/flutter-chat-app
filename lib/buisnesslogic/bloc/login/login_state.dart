part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState() = _LoginState;
  const factory LoginState.loadingstate() = _loadingstate;
  const factory LoginState.successstate() = _successstate;
  const factory LoginState.failedstate() = _failedstate;
  const factory LoginState.usernotfoundstate({required bool isUserexist}) =
      _usernotfoundstate;
  const factory LoginState.passwordnotmatchingstate() =
      _passwordnotmatchingstate;

  factory LoginState.initial() => const LoginState();
}
