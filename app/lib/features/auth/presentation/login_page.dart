import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/auth_providers.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(authFormProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Connexion')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Email'),
              onChanged: (value) => ref
                  .read(authControllerProvider.notifier)
                  .updateEmail(value),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(labelText: 'Mot de passe'),
              obscureText: true,
              onChanged: (value) => ref
                  .read(authControllerProvider.notifier)
                  .updatePassword(value),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: formState.canSubmit
                  ? () async {
                      await ref
                          .read(authControllerProvider.notifier)
                          .login();
                      if (context.mounted) {
                        Navigator.of(context).pushNamed('/players');
                      }
                    }
                  : null,
              child: formState.isLoading
                  ? const CircularProgressIndicator.adaptive()
                  : const Text('Se connecter'),
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed('/sheets'),
              child: const Text('Voir les fiches disponibles'),
            )
          ],
        ),
      ),
    );
  }
}
