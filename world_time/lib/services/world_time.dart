import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
   String location;
   String time;
   String flag;
   String url;
   String isDaytime;

   WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async{
     try {
        Response response = await get(
            'http://worldtimeapi.org/api/timezone/$url');
        Map data = jsonDecode(response.body);
        String datetime = data['datetime'];
        String offset = data['utc_offset'];

        DateTime now = DateTime.parse(datetime);
        now = now.add(Duration(hours: int.parse(offset.substring(0, 3))));
        isDaytime = now.hour > 6 && now.hour < 20 ? "image/day.png": "image/night.png";
        this.time = DateFormat.jm().format(now);
     } catch (e){
        print("There is a loading error.");
        this.time = "Data is not received.";
     }

   }
}

