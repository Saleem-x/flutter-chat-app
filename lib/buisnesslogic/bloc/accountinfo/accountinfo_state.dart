part of 'accountinfo_bloc.dart';

@freezed
class AccountinfoState with _$AccountinfoState {
  const factory AccountinfoState(
      {required String? name, required String? imageurl}) = _AccountinfoState;
  const factory AccountinfoState.imagepickedstate({required String imageurl}) =
      _imagepickedstate;
  const factory AccountinfoState.updatesuccessstate() = _updatesuccessstate;
  const factory AccountinfoState.updatefailedstate() = _updatefailedstate;

  factory AccountinfoState.initial() =>
      const AccountinfoState(name: 'user', imageurl: 'no-img');
}
