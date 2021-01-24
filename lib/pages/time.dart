import 'package:flutter/material.dart';

class Time extends StatefulWidget {
  @override
  _TimeState createState() => _TimeState();
}

class _TimeState extends State<Time> {
  final _controller = TextEditingController();

  String selectedLocation = 'Istanbul';

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.only(top: 20, left: 2, right: 2),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                style: TextStyle(),
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Location',
                  contentPadding: EdgeInsets.all(15),
                ),
              ),
              FlatButton.icon(
                  onPressed: () => {
                        setState(() => {
                              selectedLocation = _controller.text,
                            }),
                        Navigator.pop(context, {'selectedLocation': selectedLocation})
                      },
                  icon: Icon(Icons.print),
                  label: Text('Fetch'))
            ],
          )),
      appBar: AppBar(
        centerTitle: true,
        elevation: .5,
        title: Text('Choose Location'),
      ),
    );
  }
}
