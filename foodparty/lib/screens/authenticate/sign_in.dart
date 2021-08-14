import 'package:flutter/material.dart';
import 'package:foodparty/services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({ Key? key }) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[900],
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        elevation: 0,
        title: Text('Sign in to Food Party'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: ElevatedButton(
          child: Text('Sign in anon'),
          onPressed: () async{
            dynamic result = await _auth.signInAnon();
            if (result == null){
              print('error signing in');
            } else{
              print('signed in');
              print(result.uid);
            }
          },
        ),
      ),
    );
  }
}