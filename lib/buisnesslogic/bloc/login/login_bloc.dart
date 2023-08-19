import 'package:bloc/bloc.dart';
import 'package:chatapp/data/failures/failures.dart';
import 'package:chatapp/data/models/login_model/login_model.dart';
import 'package:chatapp/data/repositories/repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginRepo loginRepo;
  LoginBloc(this.loginRepo) : super(LoginState.initial()) {
    on<_userloginevent>((event, emit) async {
      emit(const _loadingstate());
      Either<MainFailures, String> userlogin =
          await loginRepo.login(event.loginModel);
      emit(userlogin.fold((l) {
        return const _failedstate();
      }, (r) {
        if (r == 'password Not matching') {
          return const _passwordnotmatchingstate();
        } else if (r == 'No User Exist in this email') {
          return const _usernotfoundstate(isUserexist: true);
        } else if (r == 'success') {
          return const _successstate();
        } else if (r == 'Network failure') {
          return const _$_failedstate();
        } else {
          return const _failedstate();
        }
      }));
    });
  }
}
