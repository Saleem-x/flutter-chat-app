part of 'accountinfo_bloc.dart';

@freezed
class AccountinfoEvent with _$AccountinfoEvent {
  // // const factory AccountinfoEvent.imagePickevent({required String imageurl}) =
  //     _imagePickevent;
  const factory AccountinfoEvent.getuserdetailsevent() = _getuserdetailsevent;
  // const factory AccountinfoEvent.updateDataEvent(
  //     {required AccountInfo accountInfo}) = _updateDataEvent;
}
