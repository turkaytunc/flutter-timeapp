import 'package:flutter/material.dart';
import 'package:flutter_timeapp/pages/home.dart';
import 'package:flutter_timeapp/pages/loading.dart';
import 'package:flutter_timeapp/pages/time.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => Time()
    },
  ));
}


