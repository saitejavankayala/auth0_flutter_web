A Flutter package to easily integrate Auth0 into Web Flutter apps.

## Platform Support

| Android | iOS | MacOS | Web | Linux | Windows |
| :-----: | :-: | :---: | :-: | :---: | :----: |
|   x    | x  |  x   | ✔️  |  x   |   x   |

Auth0FlutterWeb is supported for web only.

## Features

Integrate Auth0 authentication across web Flutter apps. Registration and Login users, logout users, and identify currently authenticated users across web.

## Usage

To use this plugin, add `auth0_flutter2` as a [dependency in your pubspec.yaml file](https://plus.fluttercommunity.dev/docs/overview).


### Web

Add the Auth0 Javascript SPA (Single Page Application) library.

```html
<script src="https://cdn.auth0.com/js/auth0-spa-js/1.13/auth0-spa-js.production.js"></script>
```

## Example

Import the library.

```dart
import 'package:auth0_flutter2/auth0_flutter2.dart';
```

Then initialize the `Auth0Flutter2` class in your `main()` method.

```dart
void main() {
  Auth0Flutter2.auth0Domain = "AUTH0_DOMAIN";
  Auth0Flutter2.auth0ClientId = "AUTH0_CLIENT_ID";
  Auth0Flutter2.redirectUri = "YOUR_APP_REDIRECT_URI";

  // Set the URL strategy for our web app. Removes 
  // trailing hash(#) to ensure login callbacks
  // will be captured and processed correctly.
  Auth0Flutter2.setPathUrlStrategy();

  runApp(const MyApp());
}
```

Then invoke the class methods anywhere in your Dart code.

```dart
Auth0Flutter2.instance.userAuthentication(screenHint: "signup");
Auth0Flutter2.instance.userAuthentication(screenHint: "login");
Auth0Flutter2.instance.logoutUser();
Auth0Flutter2.instance.getLoggedInUserId();
```