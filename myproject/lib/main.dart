import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text("MyApp"),
      backgroundColor: Colors.red[600],
    ),
    body:Center(
        child: Text("Hello Welcome to myApp"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Text("click"),
          backgroundColor: Colors.red[600],
        ),
  ),
));




