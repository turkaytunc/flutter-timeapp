import 'package:flutter/material.dart';
import 'package:flutter_timeapp/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'Loading...';
  void handleWorldTime() async {
    WorldTime worldTime = WorldTime(location: 'Istanbul');
    await worldTime.getData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': worldTime.location,
      'time': worldTime.time
    });
  }

  @override
  void initState() {
    super.initState();
    handleWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Center(child: Text(time)),
      ),
    );
  }
}
