// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accountinfo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountinfoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageurl) imagePickevent,
    required TResult Function() getuserdetailsevent,
    required TResult Function(AccountInfo accountInfo) updateDataEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imageurl)? imagePickevent,
    TResult? Function()? getuserdetailsevent,
    TResult? Function(AccountInfo accountInfo)? updateDataEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageurl)? imagePickevent,
    TResult Function()? getuserdetailsevent,
    TResult Function(AccountInfo accountInfo)? updateDataEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_imagePickevent value) imagePickevent,
    required TResult Function(_getuserdetailsevent value) getuserdetailsevent,
    required TResult Function(_updateDataEvent value) updateDataEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_imagePickevent value)? imagePickevent,
    TResult? Function(_getuserdetailsevent value)? getuserdetailsevent,
    TResult? Function(_updateDataEvent value)? updateDataEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_imagePickevent value)? imagePickevent,
    TResult Function(_getuserdetailsevent value)? getuserdetailsevent,
    TResult Function(_updateDataEvent value)? updateDataEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountinfoEventCopyWith<$Res> {
  factory $AccountinfoEventCopyWith(
          AccountinfoEvent value, $Res Function(AccountinfoEvent) then) =
      _$AccountinfoEventCopyWithImpl<$Res, AccountinfoEvent>;
}

/// @nodoc
class _$AccountinfoEventCopyWithImpl<$Res, $Val extends AccountinfoEvent>
    implements $AccountinfoEventCopyWith<$Res> {
  _$AccountinfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_imagePickeventCopyWith<$Res> {
  factory _$$_imagePickeventCopyWith(
          _$_imagePickevent value, $Res Function(_$_imagePickevent) then) =
      __$$_imagePickeventCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageurl});
}

/// @nodoc
class __$$_imagePickeventCopyWithImpl<$Res>
    extends _$AccountinfoEventCopyWithImpl<$Res, _$_imagePickevent>
    implements _$$_imagePickeventCopyWith<$Res> {
  __$$_imagePickeventCopyWithImpl(
      _$_imagePickevent _value, $Res Function(_$_imagePickevent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageurl = null,
  }) {
    return _then(_$_imagePickevent(
      imageurl: null == imageurl
          ? _value.imageurl
          : imageurl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_imagePickevent implements _imagePickevent {
  const _$_imagePickevent({required this.imageurl});

  @override
  final String imageurl;

  @override
  String toString() {
    return 'AccountinfoEvent.imagePickevent(imageurl: $imageurl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_imagePickevent &&
            (identical(other.imageurl, imageurl) ||
                other.imageurl == imageurl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageurl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_imagePickeventCopyWith<_$_imagePickevent> get copyWith =>
      __$$_imagePickeventCopyWithImpl<_$_imagePickevent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageurl) imagePickevent,
    required TResult Function() getuserdetailsevent,
    required TResult Function(AccountInfo accountInfo) updateDataEvent,
  }) {
    return imagePickevent(imageurl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imageurl)? imagePickevent,
    TResult? Function()? getuserdetailsevent,
    TResult? Function(AccountInfo accountInfo)? updateDataEvent,
  }) {
    return imagePickevent?.call(imageurl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageurl)? imagePickevent,
    TResult Function()? getuserdetailsevent,
    TResult Function(AccountInfo accountInfo)? updateDataEvent,
    required TResult orElse(),
  }) {
    if (imagePickevent != null) {
      return imagePickevent(imageurl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_imagePickevent value) imagePickevent,
    required TResult Function(_getuserdetailsevent value) getuserdetailsevent,
    required TResult Function(_updateDataEvent value) updateDataEvent,
  }) {
    return imagePickevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_imagePickevent value)? imagePickevent,
    TResult? Function(_getuserdetailsevent value)? getuserdetailsevent,
    TResult? Function(_updateDataEvent value)? updateDataEvent,
  }) {
    return imagePickevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_imagePickevent value)? imagePickevent,
    TResult Function(_getuserdetailsevent value)? getuserdetailsevent,
    TResult Function(_updateDataEvent value)? updateDataEvent,
    required TResult orElse(),
  }) {
    if (imagePickevent != null) {
      return imagePickevent(this);
    }
    return orElse();
  }
}

abstract class _imagePickevent implements AccountinfoEvent {
  const factory _imagePickevent({required final String imageurl}) =
      _$_imagePickevent;

  String get imageurl;
  @JsonKey(ignore: true)
  _$$_imagePickeventCopyWith<_$_imagePickevent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_getuserdetailseventCopyWith<$Res> {
  factory _$$_getuserdetailseventCopyWith(_$_getuserdetailsevent value,
          $Res Function(_$_getuserdetailsevent) then) =
      __$$_getuserdetailseventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getuserdetailseventCopyWithImpl<$Res>
    extends _$AccountinfoEventCopyWithImpl<$Res, _$_getuserdetailsevent>
    implements _$$_getuserdetailseventCopyWith<$Res> {
  __$$_getuserdetailseventCopyWithImpl(_$_getuserdetailsevent _value,
      $Res Function(_$_getuserdetailsevent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_getuserdetailsevent implements _getuserdetailsevent {
  const _$_getuserdetailsevent();

  @override
  String toString() {
    return 'AccountinfoEvent.getuserdetailsevent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getuserdetailsevent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageurl) imagePickevent,
    required TResult Function() getuserdetailsevent,
    required TResult Function(AccountInfo accountInfo) updateDataEvent,
  }) {
    return getuserdetailsevent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imageurl)? imagePickevent,
    TResult? Function()? getuserdetailsevent,
    TResult? Function(AccountInfo accountInfo)? updateDataEvent,
  }) {
    return getuserdetailsevent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageurl)? imagePickevent,
    TResult Function()? getuserdetailsevent,
    TResult Function(AccountInfo accountInfo)? updateDataEvent,
    required TResult orElse(),
  }) {
    if (getuserdetailsevent != null) {
      return getuserdetailsevent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_imagePickevent value) imagePickevent,
    required TResult Function(_getuserdetailsevent value) getuserdetailsevent,
    required TResult Function(_updateDataEvent value) updateDataEvent,
  }) {
    return getuserdetailsevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_imagePickevent value)? imagePickevent,
    TResult? Function(_getuserdetailsevent value)? getuserdetailsevent,
    TResult? Function(_updateDataEvent value)? updateDataEvent,
  }) {
    return getuserdetailsevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_imagePickevent value)? imagePickevent,
    TResult Function(_getuserdetailsevent value)? getuserdetailsevent,
    TResult Function(_updateDataEvent value)? updateDataEvent,
    required TResult orElse(),
  }) {
    if (getuserdetailsevent != null) {
      return getuserdetailsevent(this);
    }
    return orElse();
  }
}

abstract class _getuserdetailsevent implements AccountinfoEvent {
  const factory _getuserdetailsevent() = _$_getuserdetailsevent;
}

/// @nodoc
abstract class _$$_updateDataEventCopyWith<$Res> {
  factory _$$_updateDataEventCopyWith(
          _$_updateDataEvent value, $Res Function(_$_updateDataEvent) then) =
      __$$_updateDataEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountInfo accountInfo});
}

/// @nodoc
class __$$_updateDataEventCopyWithImpl<$Res>
    extends _$AccountinfoEventCopyWithImpl<$Res, _$_updateDataEvent>
    implements _$$_updateDataEventCopyWith<$Res> {
  __$$_updateDataEventCopyWithImpl(
      _$_updateDataEvent _value, $Res Function(_$_updateDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountInfo = null,
  }) {
    return _then(_$_updateDataEvent(
      accountInfo: null == accountInfo
          ? _value.accountInfo
          : accountInfo // ignore: cast_nullable_to_non_nullable
              as AccountInfo,
    ));
  }
}

/// @nodoc

class _$_updateDataEvent implements _updateDataEvent {
  const _$_updateDataEvent({required this.accountInfo});

  @override
  final AccountInfo accountInfo;

  @override
  String toString() {
    return 'AccountinfoEvent.updateDataEvent(accountInfo: $accountInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_updateDataEvent &&
            (identical(other.accountInfo, accountInfo) ||
                other.accountInfo == accountInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_updateDataEventCopyWith<_$_updateDataEvent> get copyWith =>
      __$$_updateDataEventCopyWithImpl<_$_updateDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imageurl) imagePickevent,
    required TResult Function() getuserdetailsevent,
    required TResult Function(AccountInfo accountInfo) updateDataEvent,
  }) {
    return updateDataEvent(accountInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imageurl)? imagePickevent,
    TResult? Function()? getuserdetailsevent,
    TResult? Function(AccountInfo accountInfo)? updateDataEvent,
  }) {
    return updateDataEvent?.call(accountInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imageurl)? imagePickevent,
    TResult Function()? getuserdetailsevent,
    TResult Function(AccountInfo accountInfo)? updateDataEvent,
    required TResult orElse(),
  }) {
    if (updateDataEvent != null) {
      return updateDataEvent(accountInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_imagePickevent value) imagePickevent,
    required TResult Function(_getuserdetailsevent value) getuserdetailsevent,
    required TResult Function(_updateDataEvent value) updateDataEvent,
  }) {
    return updateDataEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_imagePickevent value)? imagePickevent,
    TResult? Function(_getuserdetailsevent value)? getuserdetailsevent,
    TResult? Function(_updateDataEvent value)? updateDataEvent,
  }) {
    return updateDataEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_imagePickevent value)? imagePickevent,
    TResult Function(_getuserdetailsevent value)? getuserdetailsevent,
    TResult Function(_updateDataEvent value)? updateDataEvent,
    required TResult orElse(),
  }) {
    if (updateDataEvent != null) {
      return updateDataEvent(this);
    }
    return orElse();
  }
}

abstract class _updateDataEvent implements AccountinfoEvent {
  const factory _updateDataEvent({required final AccountInfo accountInfo}) =
      _$_updateDataEvent;

  AccountInfo get accountInfo;
  @JsonKey(ignore: true)
  _$$_updateDataEventCopyWith<_$_updateDataEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountinfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? name, String? imageurl) $default, {
    required TResult Function(String imageurl) imagepickedstate,
    required TResult Function() updatesuccessstate,
    required TResult Function() updatefailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? name, String? imageurl)? $default, {
    TResult? Function(String imageurl)? imagepickedstate,
    TResult? Function()? updatesuccessstate,
    TResult? Function()? updatefailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? name, String? imageurl)? $default, {
    TResult Function(String imageurl)? imagepickedstate,
    TResult Function()? updatesuccessstate,
    TResult Function()? updatefailedstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AccountinfoState value) $default, {
    required TResult Function(_imagepickedstate value) imagepickedstate,
    required TResult Function(_updatesuccessstate value) updatesuccessstate,
    required TResult Function(_updatefailedstate value) updatefailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AccountinfoState value)? $default, {
    TResult? Function(_imagepickedstate value)? imagepickedstate,
    TResult? Function(_updatesuccessstate value)? updatesuccessstate,
    TResult? Function(_updatefailedstate value)? updatefailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AccountinfoState value)? $default, {
    TResult Function(_imagepickedstate value)? imagepickedstate,
    TResult Function(_updatesuccessstate value)? updatesuccessstate,
    TResult Function(_updatefailedstate value)? updatefailedstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountinfoStateCopyWith<$Res> {
  factory $AccountinfoStateCopyWith(
          AccountinfoState value, $Res Function(AccountinfoState) then) =
      _$AccountinfoStateCopyWithImpl<$Res, AccountinfoState>;
}

/// @nodoc
class _$AccountinfoStateCopyWithImpl<$Res, $Val extends AccountinfoState>
    implements $AccountinfoStateCopyWith<$Res> {
  _$AccountinfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AccountinfoStateCopyWith<$Res> {
  factory _$$_AccountinfoStateCopyWith(
          _$_AccountinfoState value, $Res Function(_$_AccountinfoState) then) =
      __$$_AccountinfoStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name, String? imageurl});
}

/// @nodoc
class __$$_AccountinfoStateCopyWithImpl<$Res>
    extends _$AccountinfoStateCopyWithImpl<$Res, _$_AccountinfoState>
    implements _$$_AccountinfoStateCopyWith<$Res> {
  __$$_AccountinfoStateCopyWithImpl(
      _$_AccountinfoState _value, $Res Function(_$_AccountinfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? imageurl = freezed,
  }) {
    return _then(_$_AccountinfoState(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageurl: freezed == imageurl
          ? _value.imageurl
          : imageurl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AccountinfoState implements _AccountinfoState {
  const _$_AccountinfoState({required this.name, required this.imageurl});

  @override
  final String? name;
  @override
  final String? imageurl;

  @override
  String toString() {
    return 'AccountinfoState(name: $name, imageurl: $imageurl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountinfoState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageurl, imageurl) ||
                other.imageurl == imageurl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, imageurl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountinfoStateCopyWith<_$_AccountinfoState> get copyWith =>
      __$$_AccountinfoStateCopyWithImpl<_$_AccountinfoState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? name, String? imageurl) $default, {
    required TResult Function(String imageurl) imagepickedstate,
    required TResult Function() updatesuccessstate,
    required TResult Function() updatefailedstate,
  }) {
    return $default(name, imageurl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? name, String? imageurl)? $default, {
    TResult? Function(String imageurl)? imagepickedstate,
    TResult? Function()? updatesuccessstate,
    TResult? Function()? updatefailedstate,
  }) {
    return $default?.call(name, imageurl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? name, String? imageurl)? $default, {
    TResult Function(String imageurl)? imagepickedstate,
    TResult Function()? updatesuccessstate,
    TResult Function()? updatefailedstate,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, imageurl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AccountinfoState value) $default, {
    required TResult Function(_imagepickedstate value) imagepickedstate,
    required TResult Function(_updatesuccessstate value) updatesuccessstate,
    required TResult Function(_updatefailedstate value) updatefailedstate,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AccountinfoState value)? $default, {
    TResult? Function(_imagepickedstate value)? imagepickedstate,
    TResult? Function(_updatesuccessstate value)? updatesuccessstate,
    TResult? Function(_updatefailedstate value)? updatefailedstate,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AccountinfoState value)? $default, {
    TResult Function(_imagepickedstate value)? imagepickedstate,
    TResult Function(_updatesuccessstate value)? updatesuccessstate,
    TResult Function(_updatefailedstate value)? updatefailedstate,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AccountinfoState implements AccountinfoState {
  const factory _AccountinfoState(
      {required final String? name,
      required final String? imageurl}) = _$_AccountinfoState;

  String? get name;
  String? get imageurl;
  @JsonKey(ignore: true)
  _$$_AccountinfoStateCopyWith<_$_AccountinfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_imagepickedstateCopyWith<$Res> {
  factory _$$_imagepickedstateCopyWith(
          _$_imagepickedstate value, $Res Function(_$_imagepickedstate) then) =
      __$$_imagepickedstateCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageurl});
}

/// @nodoc
class __$$_imagepickedstateCopyWithImpl<$Res>
    extends _$AccountinfoStateCopyWithImpl<$Res, _$_imagepickedstate>
    implements _$$_imagepickedstateCopyWith<$Res> {
  __$$_imagepickedstateCopyWithImpl(
      _$_imagepickedstate _value, $Res Function(_$_imagepickedstate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageurl = null,
  }) {
    return _then(_$_imagepickedstate(
      imageurl: null == imageurl
          ? _value.imageurl
          : imageurl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_imagepickedstate implements _imagepickedstate {
  const _$_imagepickedstate({required this.imageurl});

  @override
  final String imageurl;

  @override
  String toString() {
    return 'AccountinfoState.imagepickedstate(imageurl: $imageurl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_imagepickedstate &&
            (identical(other.imageurl, imageurl) ||
                other.imageurl == imageurl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageurl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_imagepickedstateCopyWith<_$_imagepickedstate> get copyWith =>
      __$$_imagepickedstateCopyWithImpl<_$_imagepickedstate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? name, String? imageurl) $default, {
    required TResult Function(String imageurl) imagepickedstate,
    required TResult Function() updatesuccessstate,
    required TResult Function() updatefailedstate,
  }) {
    return imagepickedstate(imageurl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? name, String? imageurl)? $default, {
    TResult? Function(String imageurl)? imagepickedstate,
    TResult? Function()? updatesuccessstate,
    TResult? Function()? updatefailedstate,
  }) {
    return imagepickedstate?.call(imageurl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? name, String? imageurl)? $default, {
    TResult Function(String imageurl)? imagepickedstate,
    TResult Function()? updatesuccessstate,
    TResult Function()? updatefailedstate,
    required TResult orElse(),
  }) {
    if (imagepickedstate != null) {
      return imagepickedstate(imageurl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AccountinfoState value) $default, {
    required TResult Function(_imagepickedstate value) imagepickedstate,
    required TResult Function(_updatesuccessstate value) updatesuccessstate,
    required TResult Function(_updatefailedstate value) updatefailedstate,
  }) {
    return imagepickedstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AccountinfoState value)? $default, {
    TResult? Function(_imagepickedstate value)? imagepickedstate,
    TResult? Function(_updatesuccessstate value)? updatesuccessstate,
    TResult? Function(_updatefailedstate value)? updatefailedstate,
  }) {
    return imagepickedstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AccountinfoState value)? $default, {
    TResult Function(_imagepickedstate value)? imagepickedstate,
    TResult Function(_updatesuccessstate value)? updatesuccessstate,
    TResult Function(_updatefailedstate value)? updatefailedstate,
    required TResult orElse(),
  }) {
    if (imagepickedstate != null) {
      return imagepickedstate(this);
    }
    return orElse();
  }
}

abstract class _imagepickedstate implements AccountinfoState {
  const factory _imagepickedstate({required final String imageurl}) =
      _$_imagepickedstate;

  String get imageurl;
  @JsonKey(ignore: true)
  _$$_imagepickedstateCopyWith<_$_imagepickedstate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_updatesuccessstateCopyWith<$Res> {
  factory _$$_updatesuccessstateCopyWith(_$_updatesuccessstate value,
          $Res Function(_$_updatesuccessstate) then) =
      __$$_updatesuccessstateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_updatesuccessstateCopyWithImpl<$Res>
    extends _$AccountinfoStateCopyWithImpl<$Res, _$_updatesuccessstate>
    implements _$$_updatesuccessstateCopyWith<$Res> {
  __$$_updatesuccessstateCopyWithImpl(
      _$_updatesuccessstate _value, $Res Function(_$_updatesuccessstate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_updatesuccessstate implements _updatesuccessstate {
  const _$_updatesuccessstate();

  @override
  String toString() {
    return 'AccountinfoState.updatesuccessstate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_updatesuccessstate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? name, String? imageurl) $default, {
    required TResult Function(String imageurl) imagepickedstate,
    required TResult Function() updatesuccessstate,
    required TResult Function() updatefailedstate,
  }) {
    return updatesuccessstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? name, String? imageurl)? $default, {
    TResult? Function(String imageurl)? imagepickedstate,
    TResult? Function()? updatesuccessstate,
    TResult? Function()? updatefailedstate,
  }) {
    return updatesuccessstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? name, String? imageurl)? $default, {
    TResult Function(String imageurl)? imagepickedstate,
    TResult Function()? updatesuccessstate,
    TResult Function()? updatefailedstate,
    required TResult orElse(),
  }) {
    if (updatesuccessstate != null) {
      return updatesuccessstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AccountinfoState value) $default, {
    required TResult Function(_imagepickedstate value) imagepickedstate,
    required TResult Function(_updatesuccessstate value) updatesuccessstate,
    required TResult Function(_updatefailedstate value) updatefailedstate,
  }) {
    return updatesuccessstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AccountinfoState value)? $default, {
    TResult? Function(_imagepickedstate value)? imagepickedstate,
    TResult? Function(_updatesuccessstate value)? updatesuccessstate,
    TResult? Function(_updatefailedstate value)? updatefailedstate,
  }) {
    return updatesuccessstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AccountinfoState value)? $default, {
    TResult Function(_imagepickedstate value)? imagepickedstate,
    TResult Function(_updatesuccessstate value)? updatesuccessstate,
    TResult Function(_updatefailedstate value)? updatefailedstate,
    required TResult orElse(),
  }) {
    if (updatesuccessstate != null) {
      return updatesuccessstate(this);
    }
    return orElse();
  }
}

abstract class _updatesuccessstate implements AccountinfoState {
  const factory _updatesuccessstate() = _$_updatesuccessstate;
}

/// @nodoc
abstract class _$$_updatefailedstateCopyWith<$Res> {
  factory _$$_updatefailedstateCopyWith(_$_updatefailedstate value,
          $Res Function(_$_updatefailedstate) then) =
      __$$_updatefailedstateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_updatefailedstateCopyWithImpl<$Res>
    extends _$AccountinfoStateCopyWithImpl<$Res, _$_updatefailedstate>
    implements _$$_updatefailedstateCopyWith<$Res> {
  __$$_updatefailedstateCopyWithImpl(
      _$_updatefailedstate _value, $Res Function(_$_updatefailedstate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_updatefailedstate implements _updatefailedstate {
  const _$_updatefailedstate();

  @override
  String toString() {
    return 'AccountinfoState.updatefailedstate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_updatefailedstate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? name, String? imageurl) $default, {
    required TResult Function(String imageurl) imagepickedstate,
    required TResult Function() updatesuccessstate,
    required TResult Function() updatefailedstate,
  }) {
    return updatefailedstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? name, String? imageurl)? $default, {
    TResult? Function(String imageurl)? imagepickedstate,
    TResult? Function()? updatesuccessstate,
    TResult? Function()? updatefailedstate,
  }) {
    return updatefailedstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? name, String? imageurl)? $default, {
    TResult Function(String imageurl)? imagepickedstate,
    TResult Function()? updatesuccessstate,
    TResult Function()? updatefailedstate,
    required TResult orElse(),
  }) {
    if (updatefailedstate != null) {
      return updatefailedstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AccountinfoState value) $default, {
    required TResult Function(_imagepickedstate value) imagepickedstate,
    required TResult Function(_updatesuccessstate value) updatesuccessstate,
    required TResult Function(_updatefailedstate value) updatefailedstate,
  }) {
    return updatefailedstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AccountinfoState value)? $default, {
    TResult? Function(_imagepickedstate value)? imagepickedstate,
    TResult? Function(_updatesuccessstate value)? updatesuccessstate,
    TResult? Function(_updatefailedstate value)? updatefailedstate,
  }) {
    return updatefailedstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AccountinfoState value)? $default, {
    TResult Function(_imagepickedstate value)? imagepickedstate,
    TResult Function(_updatesuccessstate value)? updatesuccessstate,
    TResult Function(_updatefailedstate value)? updatefailedstate,
    required TResult orElse(),
  }) {
    if (updatefailedstate != null) {
      return updatefailedstate(this);
    }
    return orElse();
  }
}

abstract class _updatefailedstate implements AccountinfoState {
  const factory _updatefailedstate() = _$_updatefailedstate;
}
