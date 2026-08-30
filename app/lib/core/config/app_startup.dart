import 'package:flutter/widgets.dart';

/// Initialise les éléments communs à toutes les plateformes (Android & desktop).
Future<void> configureApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  // TODO: charger la configuration distante, initialiser les services, etc.
}
