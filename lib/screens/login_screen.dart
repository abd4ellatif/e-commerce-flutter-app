import 'package:ecommerceapp/providers/modelHud.dart';
import 'package:ecommerceapp/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:ecommerceapp/services/auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  static String id='LoginScreen';
  final GlobalKey<FormState> _globalKey=GlobalKey<FormState>();
  String _email,_password;
  final _auth=Auth();

  @override
  Widget build(BuildContext context) {
      double height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kMainColor ,
      body: ModalProgressHUD(
        inAsyncCall: Provider.of<ModelHud>(context).isLoading,
        child: Form(
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
                  onChanged: (value){
                    _email=value;
                  },
                  // ignore: missing_return
                  validator: (value){
                    if(value.isEmpty){
                      return 'email is empty';
                    }
                  },
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
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
                      )
                    ),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.white,
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
                    onChanged: (value){
                    _password=value;
                    },
                    // ignore: missing_return
                    validator: (value){
                      if(value.isEmpty){
                        return 'password is empty';
                      }
                    },
                    cursorColor: kMainColor,
                    obscureText: true,
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
                  child: Builder(
                    builder:(context)=> FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20) ,),
                      onPressed: ()async{
                        final modelHud=Provider.of<ModelHud>(context,listen: false);
                        modelHud.changeisLoading(true);
                        if(_globalKey.currentState.validate()){
                          try {
                            final authResult= await _auth.signin(_email, _password);
                            print(authResult.user.uid); 
                            modelHud.changeisLoading(false);
                            //Navigator.pushNamed(context, NamePage.id);
                          } catch (e) {
                            modelHud.changeisLoading(false);
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text(
                                e.message
                              ),
                              )
                            );
                          }
                        }
                        modelHud.changeisLoading(false);
                      },
                      color: Colors.black,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                        )
                      )
                    )
                  )
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
        )
      )
    );
  }
}