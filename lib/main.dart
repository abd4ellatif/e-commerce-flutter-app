import 'package:ecommerceapp/providers/modelHud.dart';
import 'package:ecommerceapp/screens/signup_screen.dart' show SignupScreen;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
//main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider<ModelHud>(
      create: (context)=>ModelHud(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.id,
        routes:
        {
          LoginScreen.id:(context)=>LoginScreen(),
          SignupScreen.id:(context)=>SignupScreen(),
        },
      )
    );
  }
}