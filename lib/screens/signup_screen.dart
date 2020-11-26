import 'package:ecommerceapp/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SignupScreen extends StatelessWidget {
  static String id='SignupScreen';
  final GlobalKey<FormState> _globalKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kMainColor ,
      body: Form(
        key: _globalKey,
        child: ListView(
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
            SizedBox(
              height:height*.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30),
              child:TextFormField(
                validator: (value){
                    if (value.isEmpty)
                    {
                      return 'value is empty';
                    }
                  },
                cursorColor: kMainColor,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: kMainColor,
                  ),
                  hintText: 'enter your username',
                  filled: true,
                  fillColor: kSecondaryColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      //width: MediaQuery.of(context).size.width*0.1
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.white,
                      //width: MediaQuery.of(context).size.width*0.1
                    )
                  ),
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: Colors.white,
                      //width: MediaQuery.of(context).size.width*0.1
                    )
                  ), 
                  )
              )
            ),
            SizedBox(
              height:height*.02,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal:30),
                child:TextFormField(
                  validator:(value){
                    if (value.isEmpty)
                    {
                      return 'value is empty';
                    }
                  } ,
                  cursorColor: kMainColor,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail,
                      color: kMainColor,
                    ),
                    hintText: 'enter your email',
                    filled: true,
                    fillColor: kSecondaryColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        //width: MediaQuery.of(context).size.width*0.1
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
                        //width: MediaQuery.of(context).size.width*0.1
                      )
                    ),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
                        //width: MediaQuery.of(context).size.width*0.1
                      )
                    ),              
                  )
                )
              ),
            SizedBox(
              height:height*.02,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal:30),
                child:TextFormField(
                  validator:(value){
                    if (value.isEmpty)
                    {
                      return 'value is empty';
                    }
                  },
                  cursorColor: kMainColor,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: kMainColor,
                    ),
                    hintText: 'enter your password',
                    filled: true,
                    fillColor: kSecondaryColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        //width: MediaQuery.of(context).size.width*0.1
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
                        //width: MediaQuery.of(context).size.width*0.1
                      )
                    ),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
                        //width: MediaQuery.of(context).size.width*0.1
                      )
                    ),           
                  )
                )
              ),
            SizedBox(
              height:height*.05,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal:100),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20) ,),
                  onPressed: (){
                    if(_globalKey.currentState.validate()){
                      // do kech heja
                    }
                  },
                  color: Colors.black,
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                    )
                  ))
              ),  
            SizedBox(
              height:height*.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                Text(
                  'Do you have an account? ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  )
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    )
                  ),
                )
                
              ]
            )
            ],
          ),
      )
    );
  }
}