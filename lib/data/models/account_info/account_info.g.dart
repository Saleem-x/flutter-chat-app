// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountInfo _$AccountInfoFromJson(Map<String, dynamic> json) => AccountInfo(
      name: json['name'] as String?,
      profileimage: json['profileimage'] as String?,
      email: json['email'] as String?,
      useruid: json['userid'] as String?,
      fcmToken: json['fcmToken'] as String?,
    );

Map<String, dynamic> _$AccountInfoToJson(AccountInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profileimage': instance.profileimage,
      'email': instance.email,
      'userid': instance.useruid,
      'fcmToken': instance.fcmToken,
    };
