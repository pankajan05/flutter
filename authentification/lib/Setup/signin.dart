import 'package:authentification/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        title: Text('Sign in'),
      ),
      body: Form(child: Column(
        children: <Widget>[
          TextFormField(
            validator: (input) {
              if(input.isEmpty){
              return 'please type an email';
              }
            },
            onSaved: (input) => _email = input,
            decoration: InputDecoration(
              labelText: 'Email'
            ),
          ),
          TextFormField(
            validator: (input) {
              if(input.isEmpty){
              return 'please give password > 6';
              }
            },
            onSaved: (input) => _password = input,
            decoration: InputDecoration(
              labelText: 'Password'
            ),
            obscureText: true,
          ),
          RaisedButton(onPressed: signIn,
          child: Text('Sign in'),)
        ],
      ),),
    );
  }

  Future<void> signIn() async {
    final formState = _formKey.currentState;
    if(true){
      formState.save();
      try{
        FirebaseUser user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email,password: _password);
        Navigator.push(context, MaterialPageRoute(builder: (context) => Home(user: user)));
      }
      catch(e){
        print('error');
      }
    }
  }
}
