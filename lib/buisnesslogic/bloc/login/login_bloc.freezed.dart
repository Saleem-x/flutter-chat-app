// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  LoginModel get loginModel => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginModel loginModel) userloginevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginModel loginModel)? userloginevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginModel loginModel)? userloginevent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userloginevent value) userloginevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userloginevent value)? userloginevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userloginevent value)? userloginevent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
  @useResult
  $Res call({LoginModel loginModel});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginModel = null,
  }) {
    return _then(_value.copyWith(
      loginModel: null == loginModel
          ? _value.loginModel
          : loginModel // ignore: cast_nullable_to_non_nullable
              as LoginModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_userlogineventCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$_userlogineventCopyWith(
          _$_userloginevent value, $Res Function(_$_userloginevent) then) =
      __$$_userlogineventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginModel loginModel});
}

/// @nodoc
class __$$_userlogineventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_userloginevent>
    implements _$$_userlogineventCopyWith<$Res> {
  __$$_userlogineventCopyWithImpl(
      _$_userloginevent _value, $Res Function(_$_userloginevent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginModel = null,
  }) {
    return _then(_$_userloginevent(
      loginModel: null == loginModel
          ? _value.loginModel
          : loginModel // ignore: cast_nullable_to_non_nullable
              as LoginModel,
    ));
  }
}

/// @nodoc

class _$_userloginevent implements _userloginevent {
  const _$_userloginevent({required this.loginModel});

  @override
  final LoginModel loginModel;

  @override
  String toString() {
    return 'LoginEvent.userloginevent(loginModel: $loginModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_userloginevent &&
            (identical(other.loginModel, loginModel) ||
                other.loginModel == loginModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_userlogineventCopyWith<_$_userloginevent> get copyWith =>
      __$$_userlogineventCopyWithImpl<_$_userloginevent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginModel loginModel) userloginevent,
  }) {
    return userloginevent(loginModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginModel loginModel)? userloginevent,
  }) {
    return userloginevent?.call(loginModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginModel loginModel)? userloginevent,
    required TResult orElse(),
  }) {
    if (userloginevent != null) {
      return userloginevent(loginModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userloginevent value) userloginevent,
  }) {
    return userloginevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userloginevent value)? userloginevent,
  }) {
    return userloginevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userloginevent value)? userloginevent,
    required TResult orElse(),
  }) {
    if (userloginevent != null) {
      return userloginevent(this);
    }
    return orElse();
  }
}

abstract class _userloginevent implements LoginEvent {
  const factory _userloginevent({required final LoginModel loginModel}) =
      _$_userloginevent;

  @override
  LoginModel get loginModel;
  @override
  @JsonKey(ignore: true)
  _$$_userlogineventCopyWith<_$_userloginevent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadingstate,
    required TResult Function() successstate,
    required TResult Function() failedstate,
    required TResult Function(bool isUserexist) usernotfoundstate,
    required TResult Function() passwordnotmatchingstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loadingstate,
    TResult? Function()? successstate,
    TResult? Function()? failedstate,
    TResult? Function(bool isUserexist)? usernotfoundstate,
    TResult? Function()? passwordnotmatchingstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadingstate,
    TResult Function()? successstate,
    TResult Function()? failedstate,
    TResult Function(bool isUserexist)? usernotfoundstate,
    TResult Function()? passwordnotmatchingstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_loadingstate value) loadingstate,
    required TResult Function(_successstate value) successstate,
    required TResult Function(_failedstate value) failedstate,
    required TResult Function(_usernotfoundstate value) usernotfoundstate,
    required TResult Function(_passwordnotmatchingstate value)
        passwordnotmatchingstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginState value)? $default, {
    TResult? Function(_loadingstate value)? loadingstate,
    TResult? Function(_successstate value)? successstate,
    TResult? Function(_failedstate value)? failedstate,
    TResult? Function(_usernotfoundstate value)? usernotfoundstate,
    TResult? Function(_passwordnotmatchingstate value)?
        passwordnotmatchingstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_loadingstate value)? loadingstate,
    TResult Function(_successstate value)? successstate,
    TResult Function(_failedstate value)? failedstate,
    TResult Function(_usernotfoundstate value)? usernotfoundstate,
    TResult Function(_passwordnotmatchingstate value)? passwordnotmatchingstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState();

  @override
  String toString() {
    return 'LoginState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadingstate,
    required TResult Function() successstate,
    required TResult Function() failedstate,
    required TResult Function(bool isUserexist) usernotfoundstate,
    required TResult Function() passwordnotmatchingstate,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loadingstate,
    TResult? Function()? successstate,
    TResult? Function()? failedstate,
    TResult? Function(bool isUserexist)? usernotfoundstate,
    TResult? Function()? passwordnotmatchingstate,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadingstate,
    TResult Function()? successstate,
    TResult Function()? failedstate,
    TResult Function(bool isUserexist)? usernotfoundstate,
    TResult Function()? passwordnotmatchingstate,
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
    TResult Function(_LoginState value) $default, {
    required TResult Function(_loadingstate value) loadingstate,
    required TResult Function(_successstate value) successstate,
    required TResult Function(_failedstate value) failedstate,
    required TResult Function(_usernotfoundstate value) usernotfoundstate,
    required TResult Function(_passwordnotmatchingstate value)
        passwordnotmatchingstate,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginState value)? $default, {
    TResult? Function(_loadingstate value)? loadingstate,
    TResult? Function(_successstate value)? successstate,
    TResult? Function(_failedstate value)? failedstate,
    TResult? Function(_usernotfoundstate value)? usernotfoundstate,
    TResult? Function(_passwordnotmatchingstate value)?
        passwordnotmatchingstate,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_loadingstate value)? loadingstate,
    TResult Function(_successstate value)? successstate,
    TResult Function(_failedstate value)? failedstate,
    TResult Function(_usernotfoundstate value)? usernotfoundstate,
    TResult Function(_passwordnotmatchingstate value)? passwordnotmatchingstate,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _LoginState implements LoginState {
  const factory _LoginState() = _$_LoginState;
}

/// @nodoc
abstract class _$$_loadingstateCopyWith<$Res> {
  factory _$$_loadingstateCopyWith(
          _$_loadingstate value, $Res Function(_$_loadingstate) then) =
      __$$_loadingstateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loadingstateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_loadingstate>
    implements _$$_loadingstateCopyWith<$Res> {
  __$$_loadingstateCopyWithImpl(
      _$_loadingstate _value, $Res Function(_$_loadingstate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_loadingstate implements _loadingstate {
  const _$_loadingstate();

  @override
  String toString() {
    return 'LoginState.loadingstate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_loadingstate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadingstate,
    required TResult Function() successstate,
    required TResult Function() failedstate,
    required TResult Function(bool isUserexist) usernotfoundstate,
    required TResult Function() passwordnotmatchingstate,
  }) {
    return loadingstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loadingstate,
    TResult? Function()? successstate,
    TResult? Function()? failedstate,
    TResult? Function(bool isUserexist)? usernotfoundstate,
    TResult? Function()? passwordnotmatchingstate,
  }) {
    return loadingstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadingstate,
    TResult Function()? successstate,
    TResult Function()? failedstate,
    TResult Function(bool isUserexist)? usernotfoundstate,
    TResult Function()? passwordnotmatchingstate,
    required TResult orElse(),
  }) {
    if (loadingstate != null) {
      return loadingstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_loadingstate value) loadingstate,
    required TResult Function(_successstate value) successstate,
    required TResult Function(_failedstate value) failedstate,
    required TResult Function(_usernotfoundstate value) usernotfoundstate,
    required TResult Function(_passwordnotmatchingstate value)
        passwordnotmatchingstate,
  }) {
    return loadingstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginState value)? $default, {
    TResult? Function(_loadingstate value)? loadingstate,
    TResult? Function(_successstate value)? successstate,
    TResult? Function(_failedstate value)? failedstate,
    TResult? Function(_usernotfoundstate value)? usernotfoundstate,
    TResult? Function(_passwordnotmatchingstate value)?
        passwordnotmatchingstate,
  }) {
    return loadingstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_loadingstate value)? loadingstate,
    TResult Function(_successstate value)? successstate,
    TResult Function(_failedstate value)? failedstate,
    TResult Function(_usernotfoundstate value)? usernotfoundstate,
    TResult Function(_passwordnotmatchingstate value)? passwordnotmatchingstate,
    required TResult orElse(),
  }) {
    if (loadingstate != null) {
      return loadingstate(this);
    }
    return orElse();
  }
}

abstract class _loadingstate implements LoginState {
  const factory _loadingstate() = _$_loadingstate;
}

/// @nodoc
abstract class _$$_successstateCopyWith<$Res> {
  factory _$$_successstateCopyWith(
          _$_successstate value, $Res Function(_$_successstate) then) =
      __$$_successstateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_successstateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_successstate>
    implements _$$_successstateCopyWith<$Res> {
  __$$_successstateCopyWithImpl(
      _$_successstate _value, $Res Function(_$_successstate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_successstate implements _successstate {
  const _$_successstate();

  @override
  String toString() {
    return 'LoginState.successstate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_successstate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadingstate,
    required TResult Function() successstate,
    required TResult Function() failedstate,
    required TResult Function(bool isUserexist) usernotfoundstate,
    required TResult Function() passwordnotmatchingstate,
  }) {
    return successstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loadingstate,
    TResult? Function()? successstate,
    TResult? Function()? failedstate,
    TResult? Function(bool isUserexist)? usernotfoundstate,
    TResult? Function()? passwordnotmatchingstate,
  }) {
    return successstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadingstate,
    TResult Function()? successstate,
    TResult Function()? failedstate,
    TResult Function(bool isUserexist)? usernotfoundstate,
    TResult Function()? passwordnotmatchingstate,
    required TResult orElse(),
  }) {
    if (successstate != null) {
      return successstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_loadingstate value) loadingstate,
    required TResult Function(_successstate value) successstate,
    required TResult Function(_failedstate value) failedstate,
    required TResult Function(_usernotfoundstate value) usernotfoundstate,
    required TResult Function(_passwordnotmatchingstate value)
        passwordnotmatchingstate,
  }) {
    return successstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginState value)? $default, {
    TResult? Function(_loadingstate value)? loadingstate,
    TResult? Function(_successstate value)? successstate,
    TResult? Function(_failedstate value)? failedstate,
    TResult? Function(_usernotfoundstate value)? usernotfoundstate,
    TResult? Function(_passwordnotmatchingstate value)?
        passwordnotmatchingstate,
  }) {
    return successstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_loadingstate value)? loadingstate,
    TResult Function(_successstate value)? successstate,
    TResult Function(_failedstate value)? failedstate,
    TResult Function(_usernotfoundstate value)? usernotfoundstate,
    TResult Function(_passwordnotmatchingstate value)? passwordnotmatchingstate,
    required TResult orElse(),
  }) {
    if (successstate != null) {
      return successstate(this);
    }
    return orElse();
  }
}

abstract class _successstate implements LoginState {
  const factory _successstate() = _$_successstate;
}

/// @nodoc
abstract class _$$_failedstateCopyWith<$Res> {
  factory _$$_failedstateCopyWith(
          _$_failedstate value, $Res Function(_$_failedstate) then) =
      __$$_failedstateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_failedstateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_failedstate>
    implements _$$_failedstateCopyWith<$Res> {
  __$$_failedstateCopyWithImpl(
      _$_failedstate _value, $Res Function(_$_failedstate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_failedstate implements _failedstate {
  const _$_failedstate();

  @override
  String toString() {
    return 'LoginState.failedstate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_failedstate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadingstate,
    required TResult Function() successstate,
    required TResult Function() failedstate,
    required TResult Function(bool isUserexist) usernotfoundstate,
    required TResult Function() passwordnotmatchingstate,
  }) {
    return failedstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loadingstate,
    TResult? Function()? successstate,
    TResult? Function()? failedstate,
    TResult? Function(bool isUserexist)? usernotfoundstate,
    TResult? Function()? passwordnotmatchingstate,
  }) {
    return failedstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadingstate,
    TResult Function()? successstate,
    TResult Function()? failedstate,
    TResult Function(bool isUserexist)? usernotfoundstate,
    TResult Function()? passwordnotmatchingstate,
    required TResult orElse(),
  }) {
    if (failedstate != null) {
      return failedstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_loadingstate value) loadingstate,
    required TResult Function(_successstate value) successstate,
    required TResult Function(_failedstate value) failedstate,
    required TResult Function(_usernotfoundstate value) usernotfoundstate,
    required TResult Function(_passwordnotmatchingstate value)
        passwordnotmatchingstate,
  }) {
    return failedstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginState value)? $default, {
    TResult? Function(_loadingstate value)? loadingstate,
    TResult? Function(_successstate value)? successstate,
    TResult? Function(_failedstate value)? failedstate,
    TResult? Function(_usernotfoundstate value)? usernotfoundstate,
    TResult? Function(_passwordnotmatchingstate value)?
        passwordnotmatchingstate,
  }) {
    return failedstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_loadingstate value)? loadingstate,
    TResult Function(_successstate value)? successstate,
    TResult Function(_failedstate value)? failedstate,
    TResult Function(_usernotfoundstate value)? usernotfoundstate,
    TResult Function(_passwordnotmatchingstate value)? passwordnotmatchingstate,
    required TResult orElse(),
  }) {
    if (failedstate != null) {
      return failedstate(this);
    }
    return orElse();
  }
}

abstract class _failedstate implements LoginState {
  const factory _failedstate() = _$_failedstate;
}

/// @nodoc
abstract class _$$_usernotfoundstateCopyWith<$Res> {
  factory _$$_usernotfoundstateCopyWith(_$_usernotfoundstate value,
          $Res Function(_$_usernotfoundstate) then) =
      __$$_usernotfoundstateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isUserexist});
}

/// @nodoc
class __$$_usernotfoundstateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_usernotfoundstate>
    implements _$$_usernotfoundstateCopyWith<$Res> {
  __$$_usernotfoundstateCopyWithImpl(
      _$_usernotfoundstate _value, $Res Function(_$_usernotfoundstate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUserexist = null,
  }) {
    return _then(_$_usernotfoundstate(
      isUserexist: null == isUserexist
          ? _value.isUserexist
          : isUserexist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_usernotfoundstate implements _usernotfoundstate {
  const _$_usernotfoundstate({required this.isUserexist});

  @override
  final bool isUserexist;

  @override
  String toString() {
    return 'LoginState.usernotfoundstate(isUserexist: $isUserexist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_usernotfoundstate &&
            (identical(other.isUserexist, isUserexist) ||
                other.isUserexist == isUserexist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUserexist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_usernotfoundstateCopyWith<_$_usernotfoundstate> get copyWith =>
      __$$_usernotfoundstateCopyWithImpl<_$_usernotfoundstate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadingstate,
    required TResult Function() successstate,
    required TResult Function() failedstate,
    required TResult Function(bool isUserexist) usernotfoundstate,
    required TResult Function() passwordnotmatchingstate,
  }) {
    return usernotfoundstate(isUserexist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loadingstate,
    TResult? Function()? successstate,
    TResult? Function()? failedstate,
    TResult? Function(bool isUserexist)? usernotfoundstate,
    TResult? Function()? passwordnotmatchingstate,
  }) {
    return usernotfoundstate?.call(isUserexist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadingstate,
    TResult Function()? successstate,
    TResult Function()? failedstate,
    TResult Function(bool isUserexist)? usernotfoundstate,
    TResult Function()? passwordnotmatchingstate,
    required TResult orElse(),
  }) {
    if (usernotfoundstate != null) {
      return usernotfoundstate(isUserexist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_loadingstate value) loadingstate,
    required TResult Function(_successstate value) successstate,
    required TResult Function(_failedstate value) failedstate,
    required TResult Function(_usernotfoundstate value) usernotfoundstate,
    required TResult Function(_passwordnotmatchingstate value)
        passwordnotmatchingstate,
  }) {
    return usernotfoundstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginState value)? $default, {
    TResult? Function(_loadingstate value)? loadingstate,
    TResult? Function(_successstate value)? successstate,
    TResult? Function(_failedstate value)? failedstate,
    TResult? Function(_usernotfoundstate value)? usernotfoundstate,
    TResult? Function(_passwordnotmatchingstate value)?
        passwordnotmatchingstate,
  }) {
    return usernotfoundstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_loadingstate value)? loadingstate,
    TResult Function(_successstate value)? successstate,
    TResult Function(_failedstate value)? failedstate,
    TResult Function(_usernotfoundstate value)? usernotfoundstate,
    TResult Function(_passwordnotmatchingstate value)? passwordnotmatchingstate,
    required TResult orElse(),
  }) {
    if (usernotfoundstate != null) {
      return usernotfoundstate(this);
    }
    return orElse();
  }
}

abstract class _usernotfoundstate implements LoginState {
  const factory _usernotfoundstate({required final bool isUserexist}) =
      _$_usernotfoundstate;

  bool get isUserexist;
  @JsonKey(ignore: true)
  _$$_usernotfoundstateCopyWith<_$_usernotfoundstate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_passwordnotmatchingstateCopyWith<$Res> {
  factory _$$_passwordnotmatchingstateCopyWith(
          _$_passwordnotmatchingstate value,
          $Res Function(_$_passwordnotmatchingstate) then) =
      __$$_passwordnotmatchingstateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_passwordnotmatchingstateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_passwordnotmatchingstate>
    implements _$$_passwordnotmatchingstateCopyWith<$Res> {
  __$$_passwordnotmatchingstateCopyWithImpl(_$_passwordnotmatchingstate _value,
      $Res Function(_$_passwordnotmatchingstate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_passwordnotmatchingstate implements _passwordnotmatchingstate {
  const _$_passwordnotmatchingstate();

  @override
  String toString() {
    return 'LoginState.passwordnotmatchingstate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_passwordnotmatchingstate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadingstate,
    required TResult Function() successstate,
    required TResult Function() failedstate,
    required TResult Function(bool isUserexist) usernotfoundstate,
    required TResult Function() passwordnotmatchingstate,
  }) {
    return passwordnotmatchingstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loadingstate,
    TResult? Function()? successstate,
    TResult? Function()? failedstate,
    TResult? Function(bool isUserexist)? usernotfoundstate,
    TResult? Function()? passwordnotmatchingstate,
  }) {
    return passwordnotmatchingstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadingstate,
    TResult Function()? successstate,
    TResult Function()? failedstate,
    TResult Function(bool isUserexist)? usernotfoundstate,
    TResult Function()? passwordnotmatchingstate,
    required TResult orElse(),
  }) {
    if (passwordnotmatchingstate != null) {
      return passwordnotmatchingstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoginState value) $default, {
    required TResult Function(_loadingstate value) loadingstate,
    required TResult Function(_successstate value) successstate,
    required TResult Function(_failedstate value) failedstate,
    required TResult Function(_usernotfoundstate value) usernotfoundstate,
    required TResult Function(_passwordnotmatchingstate value)
        passwordnotmatchingstate,
  }) {
    return passwordnotmatchingstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoginState value)? $default, {
    TResult? Function(_loadingstate value)? loadingstate,
    TResult? Function(_successstate value)? successstate,
    TResult? Function(_failedstate value)? failedstate,
    TResult? Function(_usernotfoundstate value)? usernotfoundstate,
    TResult? Function(_passwordnotmatchingstate value)?
        passwordnotmatchingstate,
  }) {
    return passwordnotmatchingstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoginState value)? $default, {
    TResult Function(_loadingstate value)? loadingstate,
    TResult Function(_successstate value)? successstate,
    TResult Function(_failedstate value)? failedstate,
    TResult Function(_usernotfoundstate value)? usernotfoundstate,
    TResult Function(_passwordnotmatchingstate value)? passwordnotmatchingstate,
    required TResult orElse(),
  }) {
    if (passwordnotmatchingstate != null) {
      return passwordnotmatchingstate(this);
    }
    return orElse();
  }
}

abstract class _passwordnotmatchingstate implements LoginState {
  const factory _passwordnotmatchingstate() = _$_passwordnotmatchingstate;
}
