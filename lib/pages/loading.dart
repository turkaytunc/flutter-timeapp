import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async{
    // await Future.delayed(
    //   Duration(seconds: 3),
    //       () => {print('Data Fetched')},
    // );

    Response response = await get('http://worldtimeapi.org/api/timezone/Europe/Istanbul');
    Map data =  jsonDecode(response.body);

    String datetime = data['datetime'];
    String offset = data['utc_offset'];



    DateTime currentTime = DateTime.parse(datetime);

    int timeOffset = int.parse(offset.substring(1,3));
    currentTime = currentTime.add(Duration(hours: timeOffset));
    print(datetime);
    print(offset);
    print(currentTime);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('Loading...'),);
  }
}
