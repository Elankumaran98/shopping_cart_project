import 'package:flutter/material.dart';
import 'package:shopping_cart_project/pages/welcomepage.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'monospace'),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return WelcomePage();
  }
}