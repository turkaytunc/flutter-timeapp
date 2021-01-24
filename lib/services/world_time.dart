import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class WorldTime {

  String location;
  String time;

  WorldTime({this.location});

  String get getTime => time;

  Future<void> getData() async{


   try{
     Response response = await get('http://worldtimeapi.org/api/timezone/Europe/${location}');
     Map data =  jsonDecode(response.body);

     String datetime = data['datetime'];
     String offset = data['utc_offset'];

     DateTime currentTime = DateTime.parse(datetime);
     int timeOffset = int.parse(offset.substring(1,3));

     currentTime = currentTime.add(Duration(hours: timeOffset));
     time = '${currentTime.hour}:${currentTime.minute}:${currentTime.second}';
   }
   catch(e){
     time='Cant fetch data';
   }
  }





}