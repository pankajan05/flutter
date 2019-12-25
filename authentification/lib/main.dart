import 'package:flutter/material.dart';

import 'Setup/signin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase',
      theme: ThemeData(
       
        primarySwatch: Colors.orange,
      ),
      home: LoginPage(),
    );
  }
}
