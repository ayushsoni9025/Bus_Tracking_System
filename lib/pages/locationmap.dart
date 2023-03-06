import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:iist_bus/pages/map_screen.dart';

double longitute = 0;
double latitute = 0;

class LocationMap extends StatefulWidget {
  const LocationMap({Key? key}) : super(key: key);

  @override
  State<LocationMap> createState() => _LocationMapState();
}
String stringResponse = "";
Map mapResponse = <String, String>{};

class _LocationMapState extends State<LocationMap> {
  Future apicall() async{
    http.Response response;
    response=await http.get(Uri.parse("https://api.thingspeak.com/channels/2052261/feeds.json?api_key=add your api key of thinkspeak &results=2"));
    if(response.statusCode == 200){

      setState((){
        stringResponse = response.body;
        mapResponse = jsonDecode(response.body);
        longitute = double.parse(mapResponse['feeds'][1]['field2']);
        latitute = double.parse(mapResponse['feeds'][1]['field3']);

        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const MapScreen()));
      });
    }
  }

  @override


  void initState(){
    apicall();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

      ),
    );
  }
}

