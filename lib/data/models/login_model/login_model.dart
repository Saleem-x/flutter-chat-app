import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'password')
  String? password;

  LoginModel({this.email, this.password});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return _$LoginModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
