import 'package:bloc/bloc.dart';
import 'package:chatapp/data/failures/failures.dart';
import 'package:chatapp/data/models/signup/signup_model/signup_model.dart';
import 'package:chatapp/data/repositories/repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final ISignupRepo signupRepo;
  SignupBloc(this.signupRepo) : super(SignupState.initial()) {
    on<_checkuserexistevent>((event, emit) async {
      emit(const _loadingstate());
      Either<MainFailures, bool> isuserexit =
          await signupRepo.checkuserexist(event.email);
      emit(
        isuserexit.fold(
          (l) => const _userexiststate(isUserexist: true),
          (r) => const _userexiststate(isUserexist: false),
        ),
      );
    });
    on<_signupevent>((event, emit) async {
      emit(const _loadingstate());
      Either<MainFailures, bool> signup =
          await signupRepo.signup(event.signupModel);
      emit(
        signup.fold(
          (l) => const _failedstate(),
          (r) => const _successstate(),
        ),
      );
    });
  }
}
