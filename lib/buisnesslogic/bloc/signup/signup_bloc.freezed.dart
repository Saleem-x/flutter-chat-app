// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) checkuserexistevent,
    required TResult Function(SignupModel signupModel) signupevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? checkuserexistevent,
    TResult? Function(SignupModel signupModel)? signupevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? checkuserexistevent,
    TResult Function(SignupModel signupModel)? signupevent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_checkuserexistevent value) checkuserexistevent,
    required TResult Function(_signupevent value) signupevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_checkuserexistevent value)? checkuserexistevent,
    TResult? Function(_signupevent value)? signupevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_checkuserexistevent value)? checkuserexistevent,
    TResult Function(_signupevent value)? signupevent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res, SignupEvent>;
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res, $Val extends SignupEvent>
    implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_checkuserexisteventCopyWith<$Res> {
  factory _$$_checkuserexisteventCopyWith(_$_checkuserexistevent value,
          $Res Function(_$_checkuserexistevent) then) =
      __$$_checkuserexisteventCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_checkuserexisteventCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$_checkuserexistevent>
    implements _$$_checkuserexisteventCopyWith<$Res> {
  __$$_checkuserexisteventCopyWithImpl(_$_checkuserexistevent _value,
      $Res Function(_$_checkuserexistevent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_checkuserexistevent(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_checkuserexistevent implements _checkuserexistevent {
  const _$_checkuserexistevent({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'SignupEvent.checkuserexistevent(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_checkuserexistevent &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_checkuserexisteventCopyWith<_$_checkuserexistevent> get copyWith =>
      __$$_checkuserexisteventCopyWithImpl<_$_checkuserexistevent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) checkuserexistevent,
    required TResult Function(SignupModel signupModel) signupevent,
  }) {
    return checkuserexistevent(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? checkuserexistevent,
    TResult? Function(SignupModel signupModel)? signupevent,
  }) {
    return checkuserexistevent?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? checkuserexistevent,
    TResult Function(SignupModel signupModel)? signupevent,
    required TResult orElse(),
  }) {
    if (checkuserexistevent != null) {
      return checkuserexistevent(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_checkuserexistevent value) checkuserexistevent,
    required TResult Function(_signupevent value) signupevent,
  }) {
    return checkuserexistevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_checkuserexistevent value)? checkuserexistevent,
    TResult? Function(_signupevent value)? signupevent,
  }) {
    return checkuserexistevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_checkuserexistevent value)? checkuserexistevent,
    TResult Function(_signupevent value)? signupevent,
    required TResult orElse(),
  }) {
    if (checkuserexistevent != null) {
      return checkuserexistevent(this);
    }
    return orElse();
  }
}

abstract class _checkuserexistevent implements SignupEvent {
  const factory _checkuserexistevent({required final String email}) =
      _$_checkuserexistevent;

  String get email;
  @JsonKey(ignore: true)
  _$$_checkuserexisteventCopyWith<_$_checkuserexistevent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_signupeventCopyWith<$Res> {
  factory _$$_signupeventCopyWith(
          _$_signupevent value, $Res Function(_$_signupevent) then) =
      __$$_signupeventCopyWithImpl<$Res>;
  @useResult
  $Res call({SignupModel signupModel});
}

/// @nodoc
class __$$_signupeventCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res, _$_signupevent>
    implements _$$_signupeventCopyWith<$Res> {
  __$$_signupeventCopyWithImpl(
      _$_signupevent _value, $Res Function(_$_signupevent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signupModel = null,
  }) {
    return _then(_$_signupevent(
      signupModel: null == signupModel
          ? _value.signupModel
          : signupModel // ignore: cast_nullable_to_non_nullable
              as SignupModel,
    ));
  }
}

/// @nodoc

class _$_signupevent implements _signupevent {
  const _$_signupevent({required this.signupModel});

  @override
  final SignupModel signupModel;

  @override
  String toString() {
    return 'SignupEvent.signupevent(signupModel: $signupModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_signupevent &&
            (identical(other.signupModel, signupModel) ||
                other.signupModel == signupModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signupModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_signupeventCopyWith<_$_signupevent> get copyWith =>
      __$$_signupeventCopyWithImpl<_$_signupevent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) checkuserexistevent,
    required TResult Function(SignupModel signupModel) signupevent,
  }) {
    return signupevent(signupModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? checkuserexistevent,
    TResult? Function(SignupModel signupModel)? signupevent,
  }) {
    return signupevent?.call(signupModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? checkuserexistevent,
    TResult Function(SignupModel signupModel)? signupevent,
    required TResult orElse(),
  }) {
    if (signupevent != null) {
      return signupevent(signupModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_checkuserexistevent value) checkuserexistevent,
    required TResult Function(_signupevent value) signupevent,
  }) {
    return signupevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_checkuserexistevent value)? checkuserexistevent,
    TResult? Function(_signupevent value)? signupevent,
  }) {
    return signupevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_checkuserexistevent value)? checkuserexistevent,
    TResult Function(_signupevent value)? signupevent,
    required TResult orElse(),
  }) {
    if (signupevent != null) {
      return signupevent(this);
    }
    return orElse();
  }
}

abstract class _signupevent implements SignupEvent {
  const factory _signupevent({required final SignupModel signupModel}) =
      _$_signupevent;

  SignupModel get signupModel;
  @JsonKey(ignore: true)
  _$$_signupeventCopyWith<_$_signupevent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadingstate,
    required TResult Function() successstate,
    required TResult Function() failedstate,
    required TResult Function(bool isUserexist) userexiststate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loadingstate,
    TResult? Function()? successstate,
    TResult? Function()? failedstate,
    TResult? Function(bool isUserexist)? userexiststate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadingstate,
    TResult Function()? successstate,
    TResult Function()? failedstate,
    TResult Function(bool isUserexist)? userexiststate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignupState value) $default, {
    required TResult Function(_loadingstate value) loadingstate,
    required TResult Function(_successstate value) successstate,
    required TResult Function(_failedstate value) failedstate,
    required TResult Function(_userexiststate value) userexiststate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignupState value)? $default, {
    TResult? Function(_loadingstate value)? loadingstate,
    TResult? Function(_successstate value)? successstate,
    TResult? Function(_failedstate value)? failedstate,
    TResult? Function(_userexiststate value)? userexiststate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignupState value)? $default, {
    TResult Function(_loadingstate value)? loadingstate,
    TResult Function(_successstate value)? successstate,
    TResult Function(_failedstate value)? failedstate,
    TResult Function(_userexiststate value)? userexiststate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignupStateCopyWith<$Res> {
  factory _$$_SignupStateCopyWith(
          _$_SignupState value, $Res Function(_$_SignupState) then) =
      __$$_SignupStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignupStateCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$_SignupState>
    implements _$$_SignupStateCopyWith<$Res> {
  __$$_SignupStateCopyWithImpl(
      _$_SignupState _value, $Res Function(_$_SignupState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignupState implements _SignupState {
  const _$_SignupState();

  @override
  String toString() {
    return 'SignupState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignupState);
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
    required TResult Function(bool isUserexist) userexiststate,
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
    TResult? Function(bool isUserexist)? userexiststate,
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
    TResult Function(bool isUserexist)? userexiststate,
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
    TResult Function(_SignupState value) $default, {
    required TResult Function(_loadingstate value) loadingstate,
    required TResult Function(_successstate value) successstate,
    required TResult Function(_failedstate value) failedstate,
    required TResult Function(_userexiststate value) userexiststate,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignupState value)? $default, {
    TResult? Function(_loadingstate value)? loadingstate,
    TResult? Function(_successstate value)? successstate,
    TResult? Function(_failedstate value)? failedstate,
    TResult? Function(_userexiststate value)? userexiststate,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignupState value)? $default, {
    TResult Function(_loadingstate value)? loadingstate,
    TResult Function(_successstate value)? successstate,
    TResult Function(_failedstate value)? failedstate,
    TResult Function(_userexiststate value)? userexiststate,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _SignupState implements SignupState {
  const factory _SignupState() = _$_SignupState;
}

/// @nodoc
abstract class _$$_loadingstateCopyWith<$Res> {
  factory _$$_loadingstateCopyWith(
          _$_loadingstate value, $Res Function(_$_loadingstate) then) =
      __$$_loadingstateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_loadingstateCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$_loadingstate>
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
    return 'SignupState.loadingstate()';
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
    required TResult Function(bool isUserexist) userexiststate,
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
    TResult? Function(bool isUserexist)? userexiststate,
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
    TResult Function(bool isUserexist)? userexiststate,
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
    TResult Function(_SignupState value) $default, {
    required TResult Function(_loadingstate value) loadingstate,
    required TResult Function(_successstate value) successstate,
    required TResult Function(_failedstate value) failedstate,
    required TResult Function(_userexiststate value) userexiststate,
  }) {
    return loadingstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignupState value)? $default, {
    TResult? Function(_loadingstate value)? loadingstate,
    TResult? Function(_successstate value)? successstate,
    TResult? Function(_failedstate value)? failedstate,
    TResult? Function(_userexiststate value)? userexiststate,
  }) {
    return loadingstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignupState value)? $default, {
    TResult Function(_loadingstate value)? loadingstate,
    TResult Function(_successstate value)? successstate,
    TResult Function(_failedstate value)? failedstate,
    TResult Function(_userexiststate value)? userexiststate,
    required TResult orElse(),
  }) {
    if (loadingstate != null) {
      return loadingstate(this);
    }
    return orElse();
  }
}

abstract class _loadingstate implements SignupState {
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
    extends _$SignupStateCopyWithImpl<$Res, _$_successstate>
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
    return 'SignupState.successstate()';
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
    required TResult Function(bool isUserexist) userexiststate,
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
    TResult? Function(bool isUserexist)? userexiststate,
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
    TResult Function(bool isUserexist)? userexiststate,
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
    TResult Function(_SignupState value) $default, {
    required TResult Function(_loadingstate value) loadingstate,
    required TResult Function(_successstate value) successstate,
    required TResult Function(_failedstate value) failedstate,
    required TResult Function(_userexiststate value) userexiststate,
  }) {
    return successstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignupState value)? $default, {
    TResult? Function(_loadingstate value)? loadingstate,
    TResult? Function(_successstate value)? successstate,
    TResult? Function(_failedstate value)? failedstate,
    TResult? Function(_userexiststate value)? userexiststate,
  }) {
    return successstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignupState value)? $default, {
    TResult Function(_loadingstate value)? loadingstate,
    TResult Function(_successstate value)? successstate,
    TResult Function(_failedstate value)? failedstate,
    TResult Function(_userexiststate value)? userexiststate,
    required TResult orElse(),
  }) {
    if (successstate != null) {
      return successstate(this);
    }
    return orElse();
  }
}

abstract class _successstate implements SignupState {
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
    extends _$SignupStateCopyWithImpl<$Res, _$_failedstate>
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
    return 'SignupState.failedstate()';
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
    required TResult Function(bool isUserexist) userexiststate,
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
    TResult? Function(bool isUserexist)? userexiststate,
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
    TResult Function(bool isUserexist)? userexiststate,
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
    TResult Function(_SignupState value) $default, {
    required TResult Function(_loadingstate value) loadingstate,
    required TResult Function(_successstate value) successstate,
    required TResult Function(_failedstate value) failedstate,
    required TResult Function(_userexiststate value) userexiststate,
  }) {
    return failedstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignupState value)? $default, {
    TResult? Function(_loadingstate value)? loadingstate,
    TResult? Function(_successstate value)? successstate,
    TResult? Function(_failedstate value)? failedstate,
    TResult? Function(_userexiststate value)? userexiststate,
  }) {
    return failedstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignupState value)? $default, {
    TResult Function(_loadingstate value)? loadingstate,
    TResult Function(_successstate value)? successstate,
    TResult Function(_failedstate value)? failedstate,
    TResult Function(_userexiststate value)? userexiststate,
    required TResult orElse(),
  }) {
    if (failedstate != null) {
      return failedstate(this);
    }
    return orElse();
  }
}

abstract class _failedstate implements SignupState {
  const factory _failedstate() = _$_failedstate;
}

/// @nodoc
abstract class _$$_userexiststateCopyWith<$Res> {
  factory _$$_userexiststateCopyWith(
          _$_userexiststate value, $Res Function(_$_userexiststate) then) =
      __$$_userexiststateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isUserexist});
}

/// @nodoc
class __$$_userexiststateCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$_userexiststate>
    implements _$$_userexiststateCopyWith<$Res> {
  __$$_userexiststateCopyWithImpl(
      _$_userexiststate _value, $Res Function(_$_userexiststate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUserexist = null,
  }) {
    return _then(_$_userexiststate(
      isUserexist: null == isUserexist
          ? _value.isUserexist
          : isUserexist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_userexiststate implements _userexiststate {
  const _$_userexiststate({required this.isUserexist});

  @override
  final bool isUserexist;

  @override
  String toString() {
    return 'SignupState.userexiststate(isUserexist: $isUserexist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_userexiststate &&
            (identical(other.isUserexist, isUserexist) ||
                other.isUserexist == isUserexist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUserexist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_userexiststateCopyWith<_$_userexiststate> get copyWith =>
      __$$_userexiststateCopyWithImpl<_$_userexiststate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadingstate,
    required TResult Function() successstate,
    required TResult Function() failedstate,
    required TResult Function(bool isUserexist) userexiststate,
  }) {
    return userexiststate(isUserexist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loadingstate,
    TResult? Function()? successstate,
    TResult? Function()? failedstate,
    TResult? Function(bool isUserexist)? userexiststate,
  }) {
    return userexiststate?.call(isUserexist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadingstate,
    TResult Function()? successstate,
    TResult Function()? failedstate,
    TResult Function(bool isUserexist)? userexiststate,
    required TResult orElse(),
  }) {
    if (userexiststate != null) {
      return userexiststate(isUserexist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignupState value) $default, {
    required TResult Function(_loadingstate value) loadingstate,
    required TResult Function(_successstate value) successstate,
    required TResult Function(_failedstate value) failedstate,
    required TResult Function(_userexiststate value) userexiststate,
  }) {
    return userexiststate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignupState value)? $default, {
    TResult? Function(_loadingstate value)? loadingstate,
    TResult? Function(_successstate value)? successstate,
    TResult? Function(_failedstate value)? failedstate,
    TResult? Function(_userexiststate value)? userexiststate,
  }) {
    return userexiststate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignupState value)? $default, {
    TResult Function(_loadingstate value)? loadingstate,
    TResult Function(_successstate value)? successstate,
    TResult Function(_failedstate value)? failedstate,
    TResult Function(_userexiststate value)? userexiststate,
    required TResult orElse(),
  }) {
    if (userexiststate != null) {
      return userexiststate(this);
    }
    return orElse();
  }
}

abstract class _userexiststate implements SignupState {
  const factory _userexiststate({required final bool isUserexist}) =
      _$_userexiststate;

  bool get isUserexist;
  @JsonKey(ignore: true)
  _$$_userexiststateCopyWith<_$_userexiststate> get copyWith =>
      throw _privateConstructorUsedError;
}
