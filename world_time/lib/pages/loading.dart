import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading';

  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Colombo', flag: 'Srilanka.png', url: 'Asia/Colombo');

    await instance.getTime();
    setState(() {
      time = instance.time;
    });
  }

  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loading'),
      ),
        body: Padding(
          padding: EdgeInsets.all(50.0),
          child: Text(time),
        ),
    );
  }

}
