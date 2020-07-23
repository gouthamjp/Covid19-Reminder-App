import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/box.dart';
import '../widgets/clockbox.dart';
import '../widgets/tick.dart';
import '../providers/req_providers.dart';

class MainMenuScreen extends StatefulWidget {
  final String routeName = '/homepage';
  @override
  _MainMenuScreenState createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  // bool checkboxValueChoice = false;
  //  List<String> allChoice = ['Mask','Golves','Sanitizer','Washing Hands'];
  //  List<String> selectedChoicex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("Covid Care"))),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.white38, Colors.white70]),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ContentBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ClockBox(),
                    TickBox(),
                  ],
                ),
                // DropDown(),
                // ChoiceBox(
                //   choices: allChoice,
                //   selectedChoices: selectedChoicex,
                //   onSelectedChoiceListChanged: (cChoices){
                //     selectedChoicex = cChoices;
                //     print(selectedChoicex);
                //   },
                // )
              ]),
        ),
      );
    
  }
}
