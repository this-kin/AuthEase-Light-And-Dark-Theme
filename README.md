# Cubex Technical Interview  🔐


Securely access your world with ease, powered by our Authentication app with auto-themeing technology. Say goodbye to the hassle of manually switching themes and trust in the reliable Riverpod and Flutter framework at the core of our app 


# Flutter Version
Flutter 3.15.5



# 💻 Requirements

- Any Operating System (ie. MacOS X, Linux, Windows)
- Any IDE with Flutter SDK installed (ie. IntelliJ, Android Studio, VSCode etc)
- A little knowledge of Dart and Flutter

# Screenshots


# Command
### Install dependencies

```sh
flutter pub get
```

### Run application

```sh
flutter emulators --launch <emulator_name>
flutter run
```

### Build

```sh
flutter build apk
```

# Plugins

- [cupertino_icons](https://pub.dev/packages/cupertino_icons) 
- [flutter_riverpod](https://pub.dev/packages/flutter_riverpod) 
- [google_fonts](https://pub.dev/packages/google_fonts) 
- [flutter_screenutil](https://pub.dev/packages/flutter_screenutil) 
- [graphql_flutter](https://pub.dev/packages/graphql_flutter) 
- [flutter_secure_storage](https://pub.dev/packages/flutter_secure_storage) 
- [go_router](https://pub.dev/packages/go_router) 
- [pinput](https://pub.dev/packages/pinput)
- [flutter_svg](https://pub.dev/packages/flutter_svg) 
- [shared_preferences](https://pub.dev/packages/shared_preferences) 
- [flutter_styled_toast](https://pub.dev/packages/flutter_styled_toast)


# Features
- Light/Dark Theme
- A registration page that consumes the /api/register routeBuild a registration page that consumes the api/register route
- a login page which makes a request to the /api/login route after successful registration.
- On login/registration, the user is  redirected to a profile page which will call the /api/profile endpoint and display the user profile


## Solutions
- Form Validation is handled with comparation of user input and Regular Expression (Regex) also with the help of GlobalKey<FormState> we can validate forms in Flutter, i have created a class that stores my Regex with comment indicating its purpose.
- It's possible to get such errors in applications, but with the help of Dio Interceptors we can validate every response and request we are making to the server, i have implemented a simple Dio Interceptors for RefreshToken check the domain/networking/interceptor layer i also added comment for better understanding
- If customer is already logged in on login page, redirect them to the profile page or home page GoRouter as an inbuilt feature for redirecting routes this particular feature is my favorite feature of GoRouter check core/app_router.dart layer for more information
- Since there's no api for logout which i assume is a little normal for custom api application i implemented a function called clearStorage to clear storage every state in the app is been stored local, once  we clear storage app gets redirected to login page
- Screens are well presentable, (shameless plug) i'm something of a UI/UX Designer myself, all other part of the screen can be found  inside of the README.md screenshots section (there's also a dark theme)
## Author

👤 **Dammy Richie**

* [Adekunle Damilola Sunday](https://github.com/kin-devv)
 

