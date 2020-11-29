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
                height: 20.0,
              ),
              Text("Hello Welcome to myApp",
              style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.grey[600],
              fontFamily: 'DancingScript',
              )),
              Divider(
                height: 30,
                color: Colors.black,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/p.jpg'),
                radius: 100,),
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
                size: 50,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                margin: EdgeInsets.all(30.0),
                color: Colors.grey,
                child: Text('hello'),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Text("For padding")//we cant use margin in padding
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.alternate_email),
                      color: Colors.red),
                  RaisedButton(
                      child: Text("Click me"),
                      color: Colors.red,
                      onPressed: () {
                        print("You clicked the button");
                      }),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.alarm,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.red[600],),
                  Padding(padding: EdgeInsets.all(10)),
                  FlatButton.icon(onPressed: (){},
                      icon: Icon(Icons.mail),
                      label: Text("mailme"),
                      color: Colors.red),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.cyan,
                    child: Text('one'),
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    color: Colors.pink,
                    child: Text('two'),
                  ),
                  Container(
                    padding: EdgeInsets.all(40),
                    color: Colors.amber,
                    child: Text('three'),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                      child: Image.asset('images/i.jpg')),
                  Expanded( //same as flex
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(30.0),
                      color: Colors.cyan,
                      child:Text('1'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(30.0),
                      color: Colors.pink,
                      child:Text('2'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(30.0),
                      color: Colors.green,
                      child:Text('3'),
                    ),
                  )
                ],
              )
            ])
      ),
        

      ),
    );
  }
}





