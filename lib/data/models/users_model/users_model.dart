import 'package:json_annotation/json_annotation.dart';

part 'users_model.g.dart';

@JsonSerializable()
class UsersModel {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'toname')
  String? toname;
  @JsonKey(name: 'profileimage')
  String? profileimage;
  @JsonKey(name: 'lastmessage')
  String? lastmessage;
  @JsonKey(name: 'tomail')
  String? tomail;
  @JsonKey(name: 'chat-id')
  String? chatid;
  @JsonKey(name: 'frommail')
  String? frommail;

  UsersModel(
      {this.name,
      this.profileimage,
      this.chatid,
      this.frommail,
      this.lastmessage,
      this.tomail,
      this.toname});

  factory UsersModel.fromJson(Map<String, dynamic> json) {
    return _$UsersModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UsersModelToJson(this);
}
