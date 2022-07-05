# Flutter Template

A template for new Flutter project.

# Features
- Multi platforms
  - Tested on Android API 32 (Pixel 4a)
- Screens
  - Welcome screen
  - Login / SignUp Screen
  - List Screen
- Basic components
  - Button
  - Card container
  - Scrollable page container with padding
- l10n locales support
  - `zh-TW`
- Services
  - Dio
  - Sample fake data
- Data model examples
- Theming
  - Using Material 3
- Routing: Navigator
  - Navigation Tab
- Utils
  - Datetime extension
  - String extension
  - Password and email validation
- ...More upcoming

## Project Structure
```
flutter-template
├───build
├───assets
│   ├───fonts
│   ├───icons
│   └───images
├───lib
│   ├───generated
│   │   └───intl
│   ├───l10n
│   ├───models
│   │   └───api
│   ├───services
│   ├───theme
│   ├───utils
│   └───widgets
│       ├───components
│       └───screens
├───test
├───android
├───ios
├───linux
├───macos
├───web
└───windows
```

# Setup
## Prequisites
1. [Install Flutter](https://docs.flutter.dev/get-started/install)
2. [Install firebase-cli](https://firebase.google.com/docs/cli#install_the_firebase_cli)

## Setup
1. `git clone` this repository
2. `flutter pub get` to get all dependencies

## Development
Choose `chrome` for debugging 

## Production
1. `flutter build android`
2. `firebase deploy`
   
## Upgrade SDK
Update to newer flutter version:
1. `flutter channel stable`
2. `flutter upgrade`
3. `flutter pub upgrade`