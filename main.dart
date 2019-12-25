import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title: "Alert Dialog",
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  //const HomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button'),),
      body:MainStatefullWiget()
          );
        }
      }
      
class MainStatefullWiget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => MainStatefullWigetState();
  
  }
  
  class MainStatefullWigetState extends State{
  int count = 0;
  var picture = 'image/Profile.png';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(picture),
          RaisedButton(
            onPressed: () {

              setState(() {
                picture = 'image/cover13.png';
              });
            
            },
            child: Text('Click'),
          )
        ],
      ),
    );
  }
}

