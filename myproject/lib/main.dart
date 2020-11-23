import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyApp"),
        backgroundColor: Colors.red[600],
      ),
      body:SafeArea(
        child: SingleChildScrollView(
            child: Column(
            children: <Widget>[
              Container(
                color: Colors.white, // Yellow
                height: 50.0,
              ),
              Text("Hello Welcome to myApp",
              style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'DancingScript',
              )),
              Image(image: NetworkImage('https://www.publicdomainpictures.net/pictures/320000/nahled/background-image.png'),),
              Container(
                color: Colors.white, // Yellow
                height: 50.0,
              ),
              Image(image: AssetImage('images/images.jpeg')),
              Container(
                color: Colors.white, // Yellow
                height: 50.0,
              ),
              Image.asset("images/i.jpg"),
              Container(
                color: Colors.white, // Yellow
                height: 50.0,
              ),
              Icon(
                Icons.alarm,
                color: Colors.red,
              ),

              FloatingActionButton(
                  onPressed: () {},
                  child: Text("click"),
                  backgroundColor: Colors.red[600],)
            ])
      ),
        

      ),
    );
  }
}





