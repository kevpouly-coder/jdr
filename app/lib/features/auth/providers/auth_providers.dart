import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../presentation/auth_controller.dart';
import '../presentation/login_state.dart';

final authControllerProvider =
    StateNotifierProvider<AuthController, LoginState>((ref) {
  return AuthController();
});

final authFormProvider = Provider<LoginState>(
  (ref) => ref.watch(authControllerProvider),
);
