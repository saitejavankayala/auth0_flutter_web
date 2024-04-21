import '../auth0_flutter_web/auth0_flutter_web.dart' as auth0_web;
import '../init_auth0/init_auth0_web.dart';

/// Fetches authenticated user ID on web.
Future<dynamic> getLoggedInUserId({
  required String auth0Domain,
  required String auth0ClientId,
  String? redirectUri,
}) async {
  try {
    auth0_web.Auth0 auth0 = await initAuth0Web(
      auth0Domain: auth0Domain,
      auth0ClientId: auth0ClientId,
      redirectUri: redirectUri,
    );

    var credentials = await auth0.getTokenSilently();
    return credentials;
  } catch (e) {
    return null;
  }
}
