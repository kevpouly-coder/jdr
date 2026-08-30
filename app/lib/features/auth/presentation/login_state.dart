import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool isLoading,
  }) = _LoginState;

  const LoginState._();

  bool get canSubmit =>
      email.trim().isNotEmpty && password.trim().length >= 6 && !isLoading;
}
