import 'package:flutter/material.dart';

void main() => runApp(SabiApp());

class SabiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "Sabinaya",
              ),
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: const <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text(
                      'Pankajan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.message),
                    title: Text('Messages'),
                  ),
                  ListTile(
                    leading: Icon(Icons.account_circle),
                    title: Text('Photos'),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                ],
              ),
            ),
            body: MainStatefulWidget()));
  }
}

class MainStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainStatefulWidgetState();
  }
}

class MainStatefulWidgetState extends State {
  String count = '';
  int c = 0;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.network('$count'),
        Text('Number $c', style: TextStyle(fontSize: 50)),
        RaisedButton(
          onPressed: () {
            
            setState(() {
              c++;
            count = 'https://i.pinimg.com/280x280_RS/1c/53/d5/1c53d5b3502165cb8d49cfcb246b9e30.jpg'; 
            });
          },
          child: Text('increment'),
        )
      ],
    ),);
  }
}
