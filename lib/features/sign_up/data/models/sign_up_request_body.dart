import 'package:json_annotation/json_annotation.dart';
part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String name;

  final String email;
  final String phone;
  final String password;
  final int gender;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  SignUpRequestBody({
    required this.name,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
    required this.gender,
    required this.phone,
  });

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
