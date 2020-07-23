import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

import './screen/mainmenu_scr.dart';
import './screen/splash_screen.dart';
import './providers/req_providers.dart';
import './screen/noti_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return ChangeNotifierProvider(
      create: (ctx) => Details(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
        routes: {
          MainMenuScreen().routeName: (ctx) => MainMenuScreen(),
          NotScreen().routeName: (ctx) => NotScreen(),
        },
      ),
    );
  }
}
