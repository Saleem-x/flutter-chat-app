// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersModel _$UsersModelFromJson(Map<String, dynamic> json) => UsersModel(
      name: json['name'] as String?,
      profileimage: json['profileimage'] as String?,
    )
      ..lastmessage = json['lastmessage'] as String?
      ..tomail = json['tomail'] as String?
      ..chatid = json['chat-id'] as String?;

Map<String, dynamic> _$UsersModelToJson(UsersModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profileimage': instance.profileimage,
      'lastmessage': instance.lastmessage,
      'tomail': instance.tomail,
      'chat-id': instance.chatid,
    };