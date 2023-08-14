part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState() = _SignupState;
  const factory SignupState.loadingstate() = _loadingstate;
  const factory SignupState.successstate() = _successstate;
  const factory SignupState.failedstate() = _failedstate;
  const factory SignupState.userexiststate({required bool isUserexist}) =
      _userexiststate;

  factory SignupState.initial() => const SignupState();
}
