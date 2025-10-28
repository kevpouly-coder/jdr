import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'login_state.dart';

class AuthController extends StateNotifier<LoginState> {
  AuthController() : super(const LoginState());

  void updateEmail(String value) => state = state.copyWith(email: value);

  void updatePassword(String value) => state = state.copyWith(password: value);

  Future<void> login() async {
    state = state.copyWith(isLoading: true);
    await Future<void>.delayed(const Duration(milliseconds: 400));
    state = state.copyWith(isLoading: false);
  }
}
