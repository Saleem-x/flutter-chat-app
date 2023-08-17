part of 'getallusers_bloc.dart';

@freezed
class GetallusersState with _$GetallusersState {
  const factory GetallusersState({required List<AccountInfo>? alluserslist}) =
      _GetallusersState;
  const factory GetallusersState.errorstate() = _errorstate;

  factory GetallusersState.initial() =>
      const GetallusersState(alluserslist: null);
}
