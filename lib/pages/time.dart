import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {
  void getData() async{
    await Future.delayed(
      Duration(seconds: 3),
      () => {print('Data Fetched')},
    );
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Choose Location Screen'),
      appBar: AppBar(
        centerTitle: true,
        elevation: .5,
        title: Text('Choose Location'),
      ),
    );
  }
}
