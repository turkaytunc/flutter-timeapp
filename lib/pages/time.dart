import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {


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
