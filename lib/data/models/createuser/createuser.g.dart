// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createuser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Createuser _$CreateuserFromJson(Map<String, dynamic> json) => Createuser(
      username: json['username'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$CreateuserToJson(Createuser instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
    };