import 'package:flutter/material.dart';

import './dropdown.dart';
class FreqPop extends StatefulWidget {
  @override
  _FreqPopState createState() => _FreqPopState();
}


class _FreqPopState extends State<FreqPop> {
  void _quit(){
  Navigator.of(context).pop();
}
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)), //this right here
      child: Container(
          height: 270,
          width: 100,
          margin: EdgeInsets.all(50),
          child: Column(
            children: <Widget>[
              DropDown(),
              RaisedButton(child: Text("Done"),onPressed: _quit)
            ],
          )),
    );
  }
}
