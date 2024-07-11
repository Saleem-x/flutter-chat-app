part of 'updateprofile_bloc.dart';

@freezed
class UpdateprofileState with _$UpdateprofileState {
  const factory UpdateprofileState() = _UpdateprofileState;
  const factory UpdateprofileState.imagePickedstate(
      {required String imageurl}) = _imagePickedstate;
  const factory UpdateprofileState.updatedstate(
      {required String imageurl, required String username}) = _Updatedstate;
  const factory UpdateprofileState.failedstate() = _failedstate;

  factory UpdateprofileState.initial() => const UpdateprofileState();
}
