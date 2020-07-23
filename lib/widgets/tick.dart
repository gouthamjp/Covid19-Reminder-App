import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './choice_popup.dart';
import '../providers/req_providers.dart';

class TickBox extends StatefulWidget {
  @override
  _TickBoxState createState() => _TickBoxState();
}

class _TickBoxState extends State<TickBox> {
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);
    return  InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return ChoicePop();
              });
        },
        splashColor: Colors.blueAccent,
        child: Container(
            padding: EdgeInsets.all(6),
            width: mq.size.width * 0.40,
            height: mq.size.height * 0.30,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black54,
                    offset: Offset(1.0, 4.0),
                    blurRadius: 5)
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.white,
                    size: 80,
                  ),
                ),
                Text(
                  "Set Preferences",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )),
      );
    
  }
}
