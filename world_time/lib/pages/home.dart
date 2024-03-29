import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty? data : ModalRoute.of(context).settings.arguments;
    Color bgColor = data['isDaytime'] == 'image/day.png' ? Colors.blue : Colors.indigo;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(data['isDaytime'] == null ? 'image/day.png':data['isDaytime']  ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: [
              FlatButton.icon(onPressed: () async {
                dynamic result = await Navigator.pushNamed(context, '/location');
                setState((){
                  data = {
                    'time' : result['time'],
                    'location': result['location'],
                    'isDaytime': result['isDaytime'],
                    'flag': result['flag'],
                  };
                });
              },
                  icon: Icon(Icons.edit_location,color: Colors.grey,),
                  label: Text('Edit location',style: TextStyle(
                    color: Colors.white,
                  ),),),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: TextStyle(
                      fontSize: 28,
                      letterSpacing: 2,
                      color: Colors.white,
                    ),
                  ),

                ],
              ),
              SizedBox(height: 20,),
              Text(
                data['time'],
                style: TextStyle(
                  fontSize: 66,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }


}
