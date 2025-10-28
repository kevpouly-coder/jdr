# JDR App

Application Flutter multiplateforme (Android & desktop) pour gérer l'authentification, les joueurs et les fiches de personnages.

## Prérequis

- Flutter 3.19 ou supérieur
- Dart SDK 3.3 ou supérieur
- Android SDK (pour la cible mobile)
- Outils desktop ciblés :
  - `flutter config --enable-linux-desktop`
  - `flutter config --enable-windows-desktop`
  - `flutter config --enable-macos-desktop`

## Lancer le projet

```bash
flutter pub get
flutter run -d android   # ou chrome, linux, windows, macos
```

## Architecture

```
lib/
├── app.dart              # MaterialApp + navigation de haut niveau
├── bootstrap.dart        # point d'entrée pour l'initialisation
├── core/                 # ressources partagées (config, providers globaux)
├── features/
│   ├── auth/             # module authentification
│   ├── players/          # module joueurs
│   └── sheets/           # module fiches
└── main.dart             # exécution principale (mobile & desktop)
```

Chaque module `features` est divisé en `data`, `domain` et `presentation` afin de séparer les responsabilités.
