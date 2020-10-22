import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Application"),
        ),
        body: Center(
          child: 
            Image(
              image: AssetImage('assets/wall.png'),
            ),
         ),

        floatingActionButton: FloatingActionButton(
          child: Text("contact"),
          onPressed: ()=> Navigator.pushNamed(context, '/contact')
          ,
        ),
      ),
    );
  }
}




