import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shopping_cart_project/pages/login/authentication/authenticationpage.dart';
import 'package:shopping_cart_project/pages/login/errorpage.dart';
import 'package:shopping_cart_project/pages/login/loadingpage.dart';

class LoginHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _init = Firebase.initializeApp();

    return FutureBuilder(
        future: _init,
        // ignore: missing_return
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return ErrorPage();
          } else if (snapshot.hasData) {
            return MaterialApp(
              theme: ThemeData(primarySwatch: Colors.red),
              home: AuthenticationPage(),
            );
          } else {
            return LoadingPage();
          }
        });
  }
}
