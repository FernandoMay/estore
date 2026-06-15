# E-Store

Online shopping Flutter app with HTTP-based API integration.

## Stack

- **Flutter** — Cross-platform mobile app
- **HTTP** — REST API communication
- **Provider** — State management
- **Firebase** — Backend services (Auth, Firestore)
- **Google Sign-In** — Authentication

## Quick Start

```bash
flutter pub get
flutter run
```

## CI/CD

Automated builds via GitHub Actions (see `.github/workflows/flutter.yml`):
- `flutter analyze` — static analysis
- `flutter test` — unit & widget tests
- `flutter build apk --debug` — debug APK

## Brand

- **Name:** E-Store
- **Primary Color:** Indigo (#3F51B5)
- **Theme:** Material 3 with `ColorScheme.fromSeed`
