import 'package:json_annotation/json_annotation.dart';

part 'account_info.g.dart';

@JsonSerializable()
class AccountInfo {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'profileimage')
  String? profileimage;

  AccountInfo({this.name, this.profileimage});

  factory AccountInfo.fromJson(Map<String, dynamic> json) {
    return _$AccountInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AccountInfoToJson(this);
}
