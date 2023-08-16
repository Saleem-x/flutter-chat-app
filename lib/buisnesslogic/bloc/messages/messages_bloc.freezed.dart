// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessagesEvent {
  String get uniqueid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MessageModel message, String uniqueid)
        sendmessageevent,
    required TResult Function(String mail, String uniqueid) getMessageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageModel message, String uniqueid)? sendmessageevent,
    TResult? Function(String mail, String uniqueid)? getMessageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageModel message, String uniqueid)? sendmessageevent,
    TResult Function(String mail, String uniqueid)? getMessageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_sendmessageevent value) sendmessageevent,
    required TResult Function(_getMessageEvent value) getMessageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_sendmessageevent value)? sendmessageevent,
    TResult? Function(_getMessageEvent value)? getMessageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_sendmessageevent value)? sendmessageevent,
    TResult Function(_getMessageEvent value)? getMessageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessagesEventCopyWith<MessagesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesEventCopyWith<$Res> {
  factory $MessagesEventCopyWith(
          MessagesEvent value, $Res Function(MessagesEvent) then) =
      _$MessagesEventCopyWithImpl<$Res, MessagesEvent>;
  @useResult
  $Res call({String uniqueid});
}

/// @nodoc
class _$MessagesEventCopyWithImpl<$Res, $Val extends MessagesEvent>
    implements $MessagesEventCopyWith<$Res> {
  _$MessagesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueid = null,
  }) {
    return _then(_value.copyWith(
      uniqueid: null == uniqueid
          ? _value.uniqueid
          : uniqueid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_sendmessageeventCopyWith<$Res>
    implements $MessagesEventCopyWith<$Res> {
  factory _$$_sendmessageeventCopyWith(
          _$_sendmessageevent value, $Res Function(_$_sendmessageevent) then) =
      __$$_sendmessageeventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MessageModel message, String uniqueid});
}

/// @nodoc
class __$$_sendmessageeventCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res, _$_sendmessageevent>
    implements _$$_sendmessageeventCopyWith<$Res> {
  __$$_sendmessageeventCopyWithImpl(
      _$_sendmessageevent _value, $Res Function(_$_sendmessageevent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? uniqueid = null,
  }) {
    return _then(_$_sendmessageevent(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
      uniqueid: null == uniqueid
          ? _value.uniqueid
          : uniqueid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_sendmessageevent implements _sendmessageevent {
  const _$_sendmessageevent({required this.message, required this.uniqueid});

  @override
  final MessageModel message;
  @override
  final String uniqueid;

  @override
  String toString() {
    return 'MessagesEvent.sendmessageevent(message: $message, uniqueid: $uniqueid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_sendmessageevent &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.uniqueid, uniqueid) ||
                other.uniqueid == uniqueid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, uniqueid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_sendmessageeventCopyWith<_$_sendmessageevent> get copyWith =>
      __$$_sendmessageeventCopyWithImpl<_$_sendmessageevent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MessageModel message, String uniqueid)
        sendmessageevent,
    required TResult Function(String mail, String uniqueid) getMessageEvent,
  }) {
    return sendmessageevent(message, uniqueid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageModel message, String uniqueid)? sendmessageevent,
    TResult? Function(String mail, String uniqueid)? getMessageEvent,
  }) {
    return sendmessageevent?.call(message, uniqueid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageModel message, String uniqueid)? sendmessageevent,
    TResult Function(String mail, String uniqueid)? getMessageEvent,
    required TResult orElse(),
  }) {
    if (sendmessageevent != null) {
      return sendmessageevent(message, uniqueid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_sendmessageevent value) sendmessageevent,
    required TResult Function(_getMessageEvent value) getMessageEvent,
  }) {
    return sendmessageevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_sendmessageevent value)? sendmessageevent,
    TResult? Function(_getMessageEvent value)? getMessageEvent,
  }) {
    return sendmessageevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_sendmessageevent value)? sendmessageevent,
    TResult Function(_getMessageEvent value)? getMessageEvent,
    required TResult orElse(),
  }) {
    if (sendmessageevent != null) {
      return sendmessageevent(this);
    }
    return orElse();
  }
}

abstract class _sendmessageevent implements MessagesEvent {
  const factory _sendmessageevent(
      {required final MessageModel message,
      required final String uniqueid}) = _$_sendmessageevent;

  MessageModel get message;
  @override
  String get uniqueid;
  @override
  @JsonKey(ignore: true)
  _$$_sendmessageeventCopyWith<_$_sendmessageevent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_getMessageEventCopyWith<$Res>
    implements $MessagesEventCopyWith<$Res> {
  factory _$$_getMessageEventCopyWith(
          _$_getMessageEvent value, $Res Function(_$_getMessageEvent) then) =
      __$$_getMessageEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mail, String uniqueid});
}

/// @nodoc
class __$$_getMessageEventCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res, _$_getMessageEvent>
    implements _$$_getMessageEventCopyWith<$Res> {
  __$$_getMessageEventCopyWithImpl(
      _$_getMessageEvent _value, $Res Function(_$_getMessageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mail = null,
    Object? uniqueid = null,
  }) {
    return _then(_$_getMessageEvent(
      mail: null == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueid: null == uniqueid
          ? _value.uniqueid
          : uniqueid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_getMessageEvent implements _getMessageEvent {
  const _$_getMessageEvent({required this.mail, required this.uniqueid});

  @override
  final String mail;
  @override
  final String uniqueid;

  @override
  String toString() {
    return 'MessagesEvent.getMessageEvent(mail: $mail, uniqueid: $uniqueid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getMessageEvent &&
            (identical(other.mail, mail) || other.mail == mail) &&
            (identical(other.uniqueid, uniqueid) ||
                other.uniqueid == uniqueid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mail, uniqueid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getMessageEventCopyWith<_$_getMessageEvent> get copyWith =>
      __$$_getMessageEventCopyWithImpl<_$_getMessageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MessageModel message, String uniqueid)
        sendmessageevent,
    required TResult Function(String mail, String uniqueid) getMessageEvent,
  }) {
    return getMessageEvent(mail, uniqueid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageModel message, String uniqueid)? sendmessageevent,
    TResult? Function(String mail, String uniqueid)? getMessageEvent,
  }) {
    return getMessageEvent?.call(mail, uniqueid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageModel message, String uniqueid)? sendmessageevent,
    TResult Function(String mail, String uniqueid)? getMessageEvent,
    required TResult orElse(),
  }) {
    if (getMessageEvent != null) {
      return getMessageEvent(mail, uniqueid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_sendmessageevent value) sendmessageevent,
    required TResult Function(_getMessageEvent value) getMessageEvent,
  }) {
    return getMessageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_sendmessageevent value)? sendmessageevent,
    TResult? Function(_getMessageEvent value)? getMessageEvent,
  }) {
    return getMessageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_sendmessageevent value)? sendmessageevent,
    TResult Function(_getMessageEvent value)? getMessageEvent,
    required TResult orElse(),
  }) {
    if (getMessageEvent != null) {
      return getMessageEvent(this);
    }
    return orElse();
  }
}

abstract class _getMessageEvent implements MessagesEvent {
  const factory _getMessageEvent(
      {required final String mail,
      required final String uniqueid}) = _$_getMessageEvent;

  String get mail;
  @override
  String get uniqueid;
  @override
  @JsonKey(ignore: true)
  _$$_getMessageEventCopyWith<_$_getMessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessagesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() messagesendstate,
    required TResult Function(List<MessageModel> messagelist) getmessagestate,
    required TResult Function() errorstate,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? messagesendstate,
    TResult? Function(List<MessageModel> messagelist)? getmessagestate,
    TResult? Function()? errorstate,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? messagesendstate,
    TResult Function(List<MessageModel> messagelist)? getmessagestate,
    TResult Function()? errorstate,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessagesState value) $default, {
    required TResult Function(_messagesendstate value) messagesendstate,
    required TResult Function(_getmessagestate value) getmessagestate,
    required TResult Function(_errorstate value) errorstate,
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MessagesState value)? $default, {
    TResult? Function(_messagesendstate value)? messagesendstate,
    TResult? Function(_getmessagestate value)? getmessagestate,
    TResult? Function(_errorstate value)? errorstate,
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessagesState value)? $default, {
    TResult Function(_messagesendstate value)? messagesendstate,
    TResult Function(_getmessagestate value)? getmessagestate,
    TResult Function(_errorstate value)? errorstate,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesStateCopyWith<$Res> {
  factory $MessagesStateCopyWith(
          MessagesState value, $Res Function(MessagesState) then) =
      _$MessagesStateCopyWithImpl<$Res, MessagesState>;
}

/// @nodoc
class _$MessagesStateCopyWithImpl<$Res, $Val extends MessagesState>
    implements $MessagesStateCopyWith<$Res> {
  _$MessagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MessagesStateCopyWith<$Res> {
  factory _$$_MessagesStateCopyWith(
          _$_MessagesState value, $Res Function(_$_MessagesState) then) =
      __$$_MessagesStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MessagesStateCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res, _$_MessagesState>
    implements _$$_MessagesStateCopyWith<$Res> {
  __$$_MessagesStateCopyWithImpl(
      _$_MessagesState _value, $Res Function(_$_MessagesState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MessagesState implements _MessagesState {
  const _$_MessagesState();

  @override
  String toString() {
    return 'MessagesState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MessagesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() messagesendstate,
    required TResult Function(List<MessageModel> messagelist) getmessagestate,
    required TResult Function() errorstate,
    required TResult Function() initial,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? messagesendstate,
    TResult? Function(List<MessageModel> messagelist)? getmessagestate,
    TResult? Function()? errorstate,
    TResult? Function()? initial,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? messagesendstate,
    TResult Function(List<MessageModel> messagelist)? getmessagestate,
    TResult Function()? errorstate,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessagesState value) $default, {
    required TResult Function(_messagesendstate value) messagesendstate,
    required TResult Function(_getmessagestate value) getmessagestate,
    required TResult Function(_errorstate value) errorstate,
    required TResult Function(_Initial value) initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MessagesState value)? $default, {
    TResult? Function(_messagesendstate value)? messagesendstate,
    TResult? Function(_getmessagestate value)? getmessagestate,
    TResult? Function(_errorstate value)? errorstate,
    TResult? Function(_Initial value)? initial,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessagesState value)? $default, {
    TResult Function(_messagesendstate value)? messagesendstate,
    TResult Function(_getmessagestate value)? getmessagestate,
    TResult Function(_errorstate value)? errorstate,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _MessagesState implements MessagesState {
  const factory _MessagesState() = _$_MessagesState;
}

/// @nodoc
abstract class _$$_messagesendstateCopyWith<$Res> {
  factory _$$_messagesendstateCopyWith(
          _$_messagesendstate value, $Res Function(_$_messagesendstate) then) =
      __$$_messagesendstateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_messagesendstateCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res, _$_messagesendstate>
    implements _$$_messagesendstateCopyWith<$Res> {
  __$$_messagesendstateCopyWithImpl(
      _$_messagesendstate _value, $Res Function(_$_messagesendstate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_messagesendstate implements _messagesendstate {
  const _$_messagesendstate();

  @override
  String toString() {
    return 'MessagesState.messagesendstate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_messagesendstate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() messagesendstate,
    required TResult Function(List<MessageModel> messagelist) getmessagestate,
    required TResult Function() errorstate,
    required TResult Function() initial,
  }) {
    return messagesendstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? messagesendstate,
    TResult? Function(List<MessageModel> messagelist)? getmessagestate,
    TResult? Function()? errorstate,
    TResult? Function()? initial,
  }) {
    return messagesendstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? messagesendstate,
    TResult Function(List<MessageModel> messagelist)? getmessagestate,
    TResult Function()? errorstate,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (messagesendstate != null) {
      return messagesendstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessagesState value) $default, {
    required TResult Function(_messagesendstate value) messagesendstate,
    required TResult Function(_getmessagestate value) getmessagestate,
    required TResult Function(_errorstate value) errorstate,
    required TResult Function(_Initial value) initial,
  }) {
    return messagesendstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MessagesState value)? $default, {
    TResult? Function(_messagesendstate value)? messagesendstate,
    TResult? Function(_getmessagestate value)? getmessagestate,
    TResult? Function(_errorstate value)? errorstate,
    TResult? Function(_Initial value)? initial,
  }) {
    return messagesendstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessagesState value)? $default, {
    TResult Function(_messagesendstate value)? messagesendstate,
    TResult Function(_getmessagestate value)? getmessagestate,
    TResult Function(_errorstate value)? errorstate,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (messagesendstate != null) {
      return messagesendstate(this);
    }
    return orElse();
  }
}

abstract class _messagesendstate implements MessagesState {
  const factory _messagesendstate() = _$_messagesendstate;
}

/// @nodoc
abstract class _$$_getmessagestateCopyWith<$Res> {
  factory _$$_getmessagestateCopyWith(
          _$_getmessagestate value, $Res Function(_$_getmessagestate) then) =
      __$$_getmessagestateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MessageModel> messagelist});
}

/// @nodoc
class __$$_getmessagestateCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res, _$_getmessagestate>
    implements _$$_getmessagestateCopyWith<$Res> {
  __$$_getmessagestateCopyWithImpl(
      _$_getmessagestate _value, $Res Function(_$_getmessagestate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messagelist = null,
  }) {
    return _then(_$_getmessagestate(
      messagelist: null == messagelist
          ? _value._messagelist
          : messagelist // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$_getmessagestate implements _getmessagestate {
  const _$_getmessagestate({required final List<MessageModel> messagelist})
      : _messagelist = messagelist;

  final List<MessageModel> _messagelist;
  @override
  List<MessageModel> get messagelist {
    if (_messagelist is EqualUnmodifiableListView) return _messagelist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messagelist);
  }

  @override
  String toString() {
    return 'MessagesState.getmessagestate(messagelist: $messagelist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_getmessagestate &&
            const DeepCollectionEquality()
                .equals(other._messagelist, _messagelist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messagelist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_getmessagestateCopyWith<_$_getmessagestate> get copyWith =>
      __$$_getmessagestateCopyWithImpl<_$_getmessagestate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() messagesendstate,
    required TResult Function(List<MessageModel> messagelist) getmessagestate,
    required TResult Function() errorstate,
    required TResult Function() initial,
  }) {
    return getmessagestate(messagelist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? messagesendstate,
    TResult? Function(List<MessageModel> messagelist)? getmessagestate,
    TResult? Function()? errorstate,
    TResult? Function()? initial,
  }) {
    return getmessagestate?.call(messagelist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? messagesendstate,
    TResult Function(List<MessageModel> messagelist)? getmessagestate,
    TResult Function()? errorstate,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (getmessagestate != null) {
      return getmessagestate(messagelist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessagesState value) $default, {
    required TResult Function(_messagesendstate value) messagesendstate,
    required TResult Function(_getmessagestate value) getmessagestate,
    required TResult Function(_errorstate value) errorstate,
    required TResult Function(_Initial value) initial,
  }) {
    return getmessagestate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MessagesState value)? $default, {
    TResult? Function(_messagesendstate value)? messagesendstate,
    TResult? Function(_getmessagestate value)? getmessagestate,
    TResult? Function(_errorstate value)? errorstate,
    TResult? Function(_Initial value)? initial,
  }) {
    return getmessagestate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessagesState value)? $default, {
    TResult Function(_messagesendstate value)? messagesendstate,
    TResult Function(_getmessagestate value)? getmessagestate,
    TResult Function(_errorstate value)? errorstate,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (getmessagestate != null) {
      return getmessagestate(this);
    }
    return orElse();
  }
}

abstract class _getmessagestate implements MessagesState {
  const factory _getmessagestate(
      {required final List<MessageModel> messagelist}) = _$_getmessagestate;

  List<MessageModel> get messagelist;
  @JsonKey(ignore: true)
  _$$_getmessagestateCopyWith<_$_getmessagestate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_errorstateCopyWith<$Res> {
  factory _$$_errorstateCopyWith(
          _$_errorstate value, $Res Function(_$_errorstate) then) =
      __$$_errorstateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_errorstateCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res, _$_errorstate>
    implements _$$_errorstateCopyWith<$Res> {
  __$$_errorstateCopyWithImpl(
      _$_errorstate _value, $Res Function(_$_errorstate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_errorstate implements _errorstate {
  const _$_errorstate();

  @override
  String toString() {
    return 'MessagesState.errorstate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_errorstate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() messagesendstate,
    required TResult Function(List<MessageModel> messagelist) getmessagestate,
    required TResult Function() errorstate,
    required TResult Function() initial,
  }) {
    return errorstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? messagesendstate,
    TResult? Function(List<MessageModel> messagelist)? getmessagestate,
    TResult? Function()? errorstate,
    TResult? Function()? initial,
  }) {
    return errorstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? messagesendstate,
    TResult Function(List<MessageModel> messagelist)? getmessagestate,
    TResult Function()? errorstate,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (errorstate != null) {
      return errorstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessagesState value) $default, {
    required TResult Function(_messagesendstate value) messagesendstate,
    required TResult Function(_getmessagestate value) getmessagestate,
    required TResult Function(_errorstate value) errorstate,
    required TResult Function(_Initial value) initial,
  }) {
    return errorstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MessagesState value)? $default, {
    TResult? Function(_messagesendstate value)? messagesendstate,
    TResult? Function(_getmessagestate value)? getmessagestate,
    TResult? Function(_errorstate value)? errorstate,
    TResult? Function(_Initial value)? initial,
  }) {
    return errorstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessagesState value)? $default, {
    TResult Function(_messagesendstate value)? messagesendstate,
    TResult Function(_getmessagestate value)? getmessagestate,
    TResult Function(_errorstate value)? errorstate,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (errorstate != null) {
      return errorstate(this);
    }
    return orElse();
  }
}

abstract class _errorstate implements MessagesState {
  const factory _errorstate() = _$_errorstate;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MessagesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() messagesendstate,
    required TResult Function(List<MessageModel> messagelist) getmessagestate,
    required TResult Function() errorstate,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? messagesendstate,
    TResult? Function(List<MessageModel> messagelist)? getmessagestate,
    TResult? Function()? errorstate,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? messagesendstate,
    TResult Function(List<MessageModel> messagelist)? getmessagestate,
    TResult Function()? errorstate,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessagesState value) $default, {
    required TResult Function(_messagesendstate value) messagesendstate,
    required TResult Function(_getmessagestate value) getmessagestate,
    required TResult Function(_errorstate value) errorstate,
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MessagesState value)? $default, {
    TResult? Function(_messagesendstate value)? messagesendstate,
    TResult? Function(_getmessagestate value)? getmessagestate,
    TResult? Function(_errorstate value)? errorstate,
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessagesState value)? $default, {
    TResult Function(_messagesendstate value)? messagesendstate,
    TResult Function(_getmessagestate value)? getmessagestate,
    TResult Function(_errorstate value)? errorstate,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MessagesState {
  const factory _Initial() = _$_Initial;
}
