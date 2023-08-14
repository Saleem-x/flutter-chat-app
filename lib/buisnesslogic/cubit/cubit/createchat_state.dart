part of 'createchat_cubit.dart';

@freezed
class CreatechatState with _$CreatechatState {
  const factory CreatechatState() = _CreatechatState;
  const factory CreatechatState.successstate() = _successstate;
  const factory CreatechatState.failedstate() = _failedstate;

  factory CreatechatState.initial() => const CreatechatState();
}
