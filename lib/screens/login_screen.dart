import 'package:flutter/material.dart';
import 'package:ecommerceapp/constants.dart';

class LoginScreen extends StatelessWidget {
  static String id='LoginScreen';
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor ,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.1),
            child: Container(
              height:MediaQuery.of(context).size.height*.2,
              child:Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('images/icons/logo.png'),
                  ),
                  Positioned(
                    bottom:0,
                    child: Text(
                      'ichtARi',
                      style: TextStyle(
                        fontFamily: 'MajorMonoDisplay',
                        fontSize: 25,
                      )
                    )
                  )  
                ]
              )
            ) , 
          ),
        ],
        ),
    );
  }
}