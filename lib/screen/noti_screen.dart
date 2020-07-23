import 'package:flutter/material.dart';

class NotScreen extends StatefulWidget {
  final String routeName = '/notification_screen';
  @override
  _NotScreenState createState() => _NotScreenState();
}

class _NotScreenState extends State<NotScreen> {
  @override
  Widget build(BuildContext context) {
    void _close() {
      Navigator.of(context).pop(null);
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("Reminder!"),
        ),
        body: Center(
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                ),
                child: Center(
                    child: Text(
                  "Mask",
                  style: TextStyle(color: Colors.white),
                )),
              ),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                ),
                child: Center(
                    child: Text(
                  "Social Distancing",
                  style: TextStyle(color: Colors.white),
                )),
              ),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                ),
                child: Center(
                    child: Text(
                  "Washing your Hands",
                  style: TextStyle(color: Colors.white),
                )),
              ),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                ),
                child: Center(
                    child: Text(
                  "Gloves",
                  style: TextStyle(color: Colors.white),
                )),
              ),
              Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                ),
                child: Center(
                    child: Text(
                  "Sanitizer",
                  style: TextStyle(color: Colors.white),
                )),
              ),
              RaisedButton(child: Text("Done"), onPressed: _close)
            ],
          ),
        ));
  }
}
