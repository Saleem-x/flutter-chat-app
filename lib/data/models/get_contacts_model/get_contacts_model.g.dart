// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_contacts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetContactsModel _$GetContactsModelFromJson(Map<String, dynamic> json) =>
    GetContactsModel(
      username: json['username'] as String?,
      email: json['email'] as String?,
      profileimg: json['profile'] as String?,
    );

Map<String, dynamic> _$GetContactsModelToJson(GetContactsModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'profile': instance.profileimg,
    };
