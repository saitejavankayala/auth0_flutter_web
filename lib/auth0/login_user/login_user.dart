import 'login_user_stub.dart'
    if (dart.library.io) 'login_user_mobile.dart'
    if (dart.library.js) 'login_user_web.dart' as impl;

/// Cross-platform method for logging in user (via universal login).
Future<dynamic> loginUser({
  required String auth0Domain,
  required String auth0ClientId,
  String? scheme,
  String? redirectUri,
  Future<void> Function()? afterLogin,
  required String screenHint,
}) =>
    impl.loginUser(
        auth0Domain: auth0Domain,
        auth0ClientId: auth0ClientId,
        scheme: scheme,
        redirectUri: redirectUri,
        afterLogin: afterLogin,
        screenHint: screenHint);
