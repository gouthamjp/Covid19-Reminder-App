import 'dart:async';
import 'package:flutter/material.dart';
import '../screen/mainmenu_scr.dart';

class SplashScreen extends StatefulWidget {
  final String routeName = '/splash-screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => MainMenuScreen(),
      ));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
             Text(
                "Covid Care",
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: "Satisfy",
                  fontSize: 80,
                  
                ),
                
              ),
            
          ],
        ),
      ),
    );
  }
}
