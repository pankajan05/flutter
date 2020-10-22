import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}



class _ContactState extends State<Contact> {

  void loadingRequest() async{
      Response response = await get('https://jsonplaceholder.typicode.com/todos');
      List data = jsonDecode(response.body);
      print(data);

      print(data[2]);
      
  }

@override
  void initState() {
    print('loading data');
    loadingRequest();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('Contact page'),
      ),
      body: Container(
      child: Column(
        children: <Widget>[
          Text('contact page'),
          RaisedButton(
            child: Text('home'),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            color: Colors.redAccent,
          )
        ],
      ),
    ),
    );
  }
}