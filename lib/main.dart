
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/screens/login_screen.dart';
import 'package:ecommerceapp/constants.dart';

main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.id,
      routes:
      {
        LoginScreen.id:(context)=>LoginScreen()
      },
    );
  }
}