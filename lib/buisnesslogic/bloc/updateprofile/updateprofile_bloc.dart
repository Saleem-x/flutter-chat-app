import 'package:bloc/bloc.dart';
import 'package:chatapp/data/failures/failures.dart';
import 'package:chatapp/data/repositories/accountinfo/accountinforepo.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'updateprofile_event.dart';
part 'updateprofile_state.dart';
part 'updateprofile_bloc.freezed.dart';

class UpdateprofileBloc extends Bloc<UpdateprofileEvent, UpdateprofileState> {
  UpdateprofileBloc() : super(UpdateprofileState.initial()) {
    final AccountinfoRepo accountinfoRepo = AccountinfoRepo();
    on<_updateevent>((event, emit) async {
      Either<MainFailures, String> getupdatedinfo =
          await accountinfoRepo.updateprofileimage(event.imageurl);

      emit(getupdatedinfo.fold(
        (l) => const _failedstate(),
        (r) => _Updatedstate(imageurl: r, username: event.username),
      ));
    });
    on<_pickimageevent>((event, emit) async {
      Either<MainFailures, String> pickimage =
          await accountinfoRepo.pickimage();
      emit(
        pickimage.fold(
          (l) => const _failedstate(),
          (r) => _imagePickedstate(imageurl: r),
        ),
      );
    });
    on<_resetimage>((event, emit) {
      emit(const UpdateprofileState());
    });
  }
}
