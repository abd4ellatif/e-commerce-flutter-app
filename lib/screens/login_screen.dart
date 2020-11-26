import 'package:ecommerceapp/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/constants.dart';

class LoginScreen extends StatelessWidget {
  static String id='LoginScreen';
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      double height= MediaQuery.of(context).size.height;
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
          SizedBox(
            height:height*.1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:30),
            child:TextField(
              cursorColor: kMainColor,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
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
                )               
                )
            )
          ),
          SizedBox(
            height:height*.02,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal:30),
              child:TextField(
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
                  )               
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
                onPressed: (){},
                color: Colors.black,
                child: Text(
                  'Login',
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
                'Don\'t have an account? ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, SignupScreen.id);
                },
                child: Text(
                  'Sign up',
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
    );
  }
}