import 'package:json_annotation/json_annotation.dart';
part 'signup_model.g.dart';

@JsonSerializable()
class SignupModel {
  @JsonKey(name: 'user_name')
  String? userName;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'password')
  String? password;

  SignupModel({this.userName, this.email, this.password});

  factory SignupModel.fromJson(Map<String, dynamic> json) {
    return _$SignupModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignupModelToJson(this);
}
