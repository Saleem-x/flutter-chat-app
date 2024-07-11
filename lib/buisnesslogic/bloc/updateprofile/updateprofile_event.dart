part of 'updateprofile_bloc.dart';

@freezed
class UpdateprofileEvent with _$UpdateprofileEvent {
  const factory UpdateprofileEvent.pickimageevent({required String imageurl}) =
      _pickimageevent;
  const factory UpdateprofileEvent.updateevent(
      {required String imageurl, required String username}) = _updateevent;
  const factory UpdateprofileEvent.resetimage({required String imageurl}) =
      _resetimage;
}
