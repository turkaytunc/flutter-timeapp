import 'package:flutter/material.dart';
import 'package:flutter_timeapp/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'Loading...';
  void handleWorldTime() async {
    WorldTime worldTime = WorldTime(location: 'Istanbul');
    await worldTime.getData();
    await Future.delayed(
      Duration(seconds: 3),
      () => {print('Data Fetched')},
    );
    Navigator.pushReplacementNamed(context, '/home',
        arguments: {'location': worldTime.location, 'time': worldTime.time});
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
        padding: const EdgeInsets.only(bottom: 200, top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: SpinKitWave(
              color: Colors.grey[800],
              size: 50.0,
              duration: Duration(seconds: 1),
            )),
            SizedBox(height: 20),
            Text("Yükleniyor..."),
          ],
        ),
      ),
    );
  }
}
