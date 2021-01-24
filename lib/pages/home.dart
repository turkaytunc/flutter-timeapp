import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty? data: ModalRoute.of(context).settings.arguments;

    print(data);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlatButton.icon(
                onPressed: () async {
                  dynamic result = await Navigator.pushNamed(context, '/location');
                  setState(() {
                    data['location'] = result['selectedLocation'];
                  });
                },
                icon: Icon(Icons.edit_location),
                label: Text('Change Location'),
              ),
              SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  data['location'],
                  style: TextStyle(fontSize: 24),
                )
              ]),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['time'],
                    style: TextStyle(fontSize: 72),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
