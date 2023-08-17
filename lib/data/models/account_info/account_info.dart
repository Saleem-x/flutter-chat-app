import 'package:json_annotation/json_annotation.dart';

part 'account_info.g.dart';

@JsonSerializable()
class AccountInfo {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'profileimage')
  String? profileimage;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'userid')
  String? useruid;

  AccountInfo({this.name, this.profileimage, this.email, this.useruid});

  factory AccountInfo.fromJson(Map<String, dynamic> json) {
    return _$AccountInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AccountInfoToJson(this);
}
