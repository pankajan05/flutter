import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async{
    //simulate network request for username
    String usrname = await Future.delayed(Duration(seconds: 10), () {
      return 'kajan';
    });

    String bio = await Future.delayed(Duration(seconds: 3), () {
      return 'sabi';
    });
    print('$usrname -> $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('init state function');
  }

  @override
  Widget build(BuildContext context) {
    print('build state function');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('choose Location'),
    );
  }
}
