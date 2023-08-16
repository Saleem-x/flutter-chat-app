import 'package:json_annotation/json_annotation.dart';

part 'createuser.g.dart';

@JsonSerializable()
class Createuser {
  @JsonKey(name: 'username')
  String? username;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'profile')
  String? profileimg;
  @JsonKey(name: 'chat-id')
  String? chatid;

  Createuser({this.username, this.email, this.profileimg, this.chatid});

  factory Createuser.fromJson(Map<String, dynamic> json) {
    return _$CreateuserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CreateuserToJson(this);
}
