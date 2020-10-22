import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget{
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int level = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("My Id card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation:0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child:
          CircleAvatar(
            backgroundImage: AssetImage('assets/kj.jpg'),
            radius: 40.0,
          ),),
          Divider(
            height: 90.0,
            color: Colors.grey,
          ),
          Text('Name',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2.0,
          )),
          SizedBox(height: 10.0,),
           Text('Pankajan',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2.0,
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
          )),
          SizedBox(height: 30.0,),
          Text('Address',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2.0,
          )),
          SizedBox(height: 10.0,),
           Text('Jaffna, Srilanka',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2.0,
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
          )),

          SizedBox(height: 30.0,),
            Text('Level',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                )),
            SizedBox(height: 10.0,),
            Text('$level',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30.0,),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color:Colors.grey,
              ),
              SizedBox(width: 10.0,),
              Text('pankajan05@gmail.com',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                letterSpacing: 1.0,
              ),)
            ],
          ),
          SizedBox(height: 30.0,),
          Row(
            children: <Widget>[
              Icon(
                Icons.chat,
                color:Colors.grey,
              ),
              SizedBox(width: 10.0,),
              Text('0772958306',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                letterSpacing: 1.0,
              ),)
            ],
          ),
          ],)
      )
    );
  }
}