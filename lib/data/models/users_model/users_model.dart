import 'package:json_annotation/json_annotation.dart';

part 'users_model.g.dart';

@JsonSerializable()
class UsersModel {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'profileimage')
  String? profileimage;
  @JsonKey(name: 'lastmessage')
  String? lastmessage;
  @JsonKey(name: 'tomail')
  String? tomail;
  @JsonKey(name: 'chat-id')
  String? chatid;

  UsersModel({this.name, this.profileimage});

  factory UsersModel.fromJson(Map<String, dynamic> json) {
    return _$UsersModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UsersModelToJson(this);
}
