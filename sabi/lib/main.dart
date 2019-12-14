import 'package:flutter/material.dart';

void main() {
  return runApp(SabiApp());
}

class SabiApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Center(
      child: Text("Hi my love Sabi",
      style: TextStyle(color : Colors.red),
      ),
      ),
    );
  }

}