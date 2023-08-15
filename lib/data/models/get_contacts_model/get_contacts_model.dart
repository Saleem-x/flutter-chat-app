import 'package:json_annotation/json_annotation.dart';

part 'get_contacts_model.g.dart';

@JsonSerializable()
class GetContactsModel {
  @JsonKey(name: 'username')
  String? username;
  @JsonKey(name: 'email')
  String? email;

  GetContactsModel({this.username, this.email});

  factory GetContactsModel.fromJson(Map<String, dynamic> json) {
    return _$GetContactsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetContactsModelToJson(this);
}
