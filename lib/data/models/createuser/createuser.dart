import 'package:json_annotation/json_annotation.dart';

part 'createuser.g.dart';

@JsonSerializable()
class Createuser {
  @JsonKey(name: 'username')
  String? username;
  @JsonKey(name: 'email')
  String? email;

  Createuser({this.username, this.email});

  factory Createuser.fromJson(Map<String, dynamic> json) {
    return _$CreateuserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CreateuserToJson(this);
}
