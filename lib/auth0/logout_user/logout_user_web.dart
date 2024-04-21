import '../auth0_flutter_web/auth0_flutter_web.dart' as auth0_web;
import '../auth0_flutter_web/src/options.dart';
import '../init_auth0/init_auth0_web.dart';

/// Logs out user (via universal login) on web.
Future<void> logoutUser({
  required String auth0Domain,
  required String auth0ClientId,
  required String redirectUri,
  String? scheme,
}) async {
  auth0_web.Auth0 auth0 = await initAuth0Web(
    auth0Domain: auth0Domain,
    auth0ClientId: auth0ClientId,
    redirectUri: redirectUri,
  );

  try {
    auth0.logout(
      options: LogoutOptions(
        returnTo: redirectUri,
      ),
    );
  } catch (e) {
    throw Exception(e);
  }
}
