import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_login_input.freezed.dart';

@freezed
class EmailLoginInput with _$EmailLoginInput {
  factory EmailLoginInput({
    required String email,
    required String password
  }) = _EmailLoginInput;

}