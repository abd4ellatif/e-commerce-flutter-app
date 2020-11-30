// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';

class Auth
{
  final _auth=FirebaseAuth.instance;

    Future<UserCredential> signup(String email,String password) async
    {
      final authResult= await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
      return authResult;
    }

    Future<UserCredential> signin(String email,String password) async
    {
      final authResult= await _auth.signInWithEmailAndPassword(
        email: email, password: password);
      return authResult;
    }
}

