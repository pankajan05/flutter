import 'package:flutter/material.dart';

void main() {
  return runApp(SabiApp());
}

class SabiApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:  Scaffold(appBar: AppBar(
        
        title: Text("Sabinaya",),),
        body: Center(child: RaisedButton(
          onPressed: null,
          child: Text("Press me"),
        ),
      ),)
    );
  }

}