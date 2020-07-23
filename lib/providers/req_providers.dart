import 'package:flutter/material.dart';
import '../model/time_mod.dart';
class Details with ChangeNotifier{
  List<bool> _isSwitched = [false,false,false,false,false]; 
  Timer frequency = Timer(1,'30min');


  List<bool> get items {
    return [..._isSwitched];
  }

  Timer get freq {
    return frequency;
  }

  void change(int i,bool val){
    _isSwitched[i] = val;
  }

  void changefreq(Timer value){
    frequency = value;
  }
}