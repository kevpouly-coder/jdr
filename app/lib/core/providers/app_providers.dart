import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Exemple de provider global accessible dans toute l'application.
final environmentProvider = Provider<String>((ref) {
  return 'production';
});
