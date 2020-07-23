import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/req_providers.dart';
class ChoicePop extends StatefulWidget {
  @override
  _ChoicePopState createState() => _ChoicePopState();
}

class _ChoicePopState extends State<ChoicePop> {
  @override
  Widget build(BuildContext context) {
    final det_data = Provider.of<Details>(context);
    final choice = det_data.items;
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)), //this right here
      child: Container(
        height: 270,
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Set your reminder preferences.',
              textAlign: TextAlign.center,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Mask"),
                  Switch(
                    value: choice[0],
                    onChanged: (value) {
                      setState(() {
                        det_data.change(0, value);
                        print(choice[0]);
                      });
                    },
                    activeTrackColor: Colors.lightBlueAccent,
                    activeColor: Colors.blue,
                  ),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Social Distancing"),
                  Switch(
                    value: choice[1],
                    onChanged: (value) {
                      setState(() {
                        det_data.change(1, value);
                        print(choice[1]);
                      });
                    },
                    activeTrackColor: Colors.lightBlueAccent,
                    activeColor: Colors.blue,
                  ),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Washing your hands"),
                  Switch(
                    value: choice[2],
                    onChanged: (value) {
                      setState(() {
                        det_data.change(2, value);
                        print(choice[2]);
                      });
                    },
                    activeTrackColor: Colors.lightBlueAccent,
                    activeColor: Colors.blue,
                  ),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Gloves"),
                  Switch(
                    value: choice[3],
                    onChanged: (value) {
                      setState(() {
                        det_data.change(3, value);
                        print(choice[3]);
                      });
                    },
                    activeTrackColor: Colors.lightBlueAccent,
                    activeColor: Colors.blue,
                  ),
                ]),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Sanitizer"),
                  Switch(
                    value: choice[4],
                    onChanged: (value) {
                      setState(() {
                        det_data.change(4, value);
                        print(choice[4]);
                      });
                    },
                    activeTrackColor: Colors.lightBlueAccent,
                    activeColor: Colors.blue,
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
