part of 'getcontacts_bloc.dart';

@freezed
class GetcontactsEvent with _$GetcontactsEvent {
  const factory GetcontactsEvent.getAllContacts() = _getAllContacts;
}
