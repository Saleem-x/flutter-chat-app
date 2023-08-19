part of 'accountinfo_bloc.dart';

@freezed
class AccountinfoState with _$AccountinfoState {
  const factory AccountinfoState(
      {required String? name, required String? imageurl}) = _AccountinfoState;

  const factory AccountinfoState.errorstate() = _errorstate;

  factory AccountinfoState.initial() =>
      const AccountinfoState(name: 'user', imageurl: 'no-img');
}
