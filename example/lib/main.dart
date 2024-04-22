import 'package:flutter/material.dart';
import 'package:auth0_web_flutter/auth0_flutter_web.dart';

void main() {
  // add the auth0domain
  Auth0FlutterWeb.auth0Domain = "enter the auth0 domain";
  //add the auth0ClientID
  Auth0FlutterWeb.auth0ClientId = "enter the auth0 client id";
  Auth0FlutterWeb.setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Column(children: [

        //creating new user in the auth0
        ElevatedButton(
          onPressed: () {
            Auth0FlutterWeb.instance.userAuthentication( screenHint: 'signup');
          },
          child: Text("Signup"),
        ),
        // login with existing user in the auth0
        ElevatedButton(
          onPressed: () {
            Auth0FlutterWeb.instance.userAuthentication( screenHint: 'login');
          },
          child: Text("login"),
        ),
        //clearing sessions for the particular user
        ElevatedButton(
          onPressed: () {
            Auth0FlutterWeb.instance.logoutUser();
          },
          child: Text("logout"),
        ),
      ]),
    );
  }
}
