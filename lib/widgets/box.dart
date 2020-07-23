import 'package:flutter/material.dart';

class ContentBox extends StatelessWidget {
  final String add = 'assets/images/mask.png';

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);
    return Container(
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color : Colors.black54,
            offset: Offset(1.0,4.0),
            blurRadius: 5
          )
        ],
      ),
      alignment: Alignment.topCenter,
      child: Image.asset(
        add,
        alignment: Alignment.center,
        fit: BoxFit.contain,
        height: mq.size.height * 0.4,
        width: mq.size.width * 0.4,
      ),
    );
  }
}
