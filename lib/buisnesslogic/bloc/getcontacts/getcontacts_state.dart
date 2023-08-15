part of 'getcontacts_bloc.dart';

@freezed
class GetcontactsState with _$GetcontactsState {
  const factory GetcontactsState() = _GetcontactsState;
  const factory GetcontactsState.hasContactState(
      {required List<GetContactsModel> contactlist}) = _hasContactState;
  const factory GetcontactsState.errorstate() = _errorstate;
  factory GetcontactsState.initial() => const GetcontactsState();
}
