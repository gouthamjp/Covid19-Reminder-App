import 'package:covid_care/providers/req_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';

import '../model/time_mod.dart';
import '../screen/noti_screen.dart';

Timer _selectTime;

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  List<Timer> _timeOp = Timer.getTime();
  List<DropdownMenuItem<Timer>> _dropdownMenuItem;

  FlutterLocalNotificationsPlugin flutterlocalnotification =
      FlutterLocalNotificationsPlugin();

  var initializationSettingAndroid;
  var initializationSettingIOS;
  var initializationSetting;

  Future<void> _demoNotification_one() async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'channel_ID', 'Channel_name', 'Channel_description',
        importance: Importance.Max,
        priority: Priority.High,
        ticker: 'ticker Tester');
    var iosChannelSpecific = IOSNotificationDetails();
    var platformSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iosChannelSpecific);

    await flutterlocalnotification.periodicallyShow(
        0,
        'Covid Reminder',
        'Hey dont forget to follow the reminders you set!',
        RepeatInterval.EveryMinute,
        platformSpecifics);
  }

  Future<void> _demoNotification_two() async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'channel_ID', 'Channel_name', 'Channel_description',
        importance: Importance.Max,
        priority: Priority.High,
        ticker: 'ticker Tester');
    var iosChannelSpecific = IOSNotificationDetails();
    var platformSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iosChannelSpecific);

    await flutterlocalnotification.periodicallyShow(0, 'Covid Reminder',
        'Hey dont forget to follow the reminders you set!', RepeatInterval.Hourly, platformSpecifics);
  }

  Future<void> _demoNotification_three() async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'channel_ID', 'Channel_name', 'Channel_description',
        importance: Importance.Max,
        priority: Priority.High,
        ticker: 'ticker Tester');
    var iosChannelSpecific = IOSNotificationDetails();
    var platformSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iosChannelSpecific);

    await flutterlocalnotification.periodicallyShow(0, 'Covid Reminder',
        'Hey dont forget to follow the reminders you set!', RepeatInterval.Daily, platformSpecifics);
  }

  Future<void> _demoNotification_four() async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        'channel_ID', 'Channel_name', 'Channel_description',
        importance: Importance.Max,
        priority: Priority.High,
        ticker: 'ticker Tester');
    var iosChannelSpecific = IOSNotificationDetails();
    var platformSpecifics = NotificationDetails(
        androidPlatformChannelSpecifics, iosChannelSpecific);

    await flutterlocalnotification.periodicallyShow(0, 'Covid Reminder',
        'Hey dont forget to follow the reminders you set!', RepeatInterval.Weekly, platformSpecifics);
  }

  @override
  void initState() {
    _dropdownMenuItem = buildDropDownMenuItems(_timeOp);
    _selectTime = _dropdownMenuItem[0].value;
    super.initState();
    initializationSettingAndroid = AndroidInitializationSettings("app_icon");
    initializationSettingIOS = IOSInitializationSettings(
        onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    initializationSetting = InitializationSettings(
        initializationSettingAndroid, initializationSettingIOS);
    flutterlocalnotification.initialize(initializationSetting,
        onSelectNotification: onSelectNotification);
  }

  Future onSelectNotification(String payload) async {
    if (payload != Null) {
      debugPrint('Notification payload: $payload');
    }
    await Navigator.push(
        context, MaterialPageRoute(builder: (context) => NotScreen()));
  }

  Future onDidReceiveLocalNotification(
      int id, String title, String body, String payload) async {
    await showDialog(
        context: context,
        builder: (BuildContext ctx) => AlertDialog(
              title: Text("Title"),
              content: Text("BODY"),
              actions: <Widget>[
                RaisedButton(
                  child: Text('OK'),
                  onPressed: () async {
                    Navigator.of(context, rootNavigator: true).pop();
                    await Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NotScreen()));
                  },
                ),
              ],
            ));
  }

  void _cancelNotification() async {
    await flutterlocalnotification.cancelAll();
  }

  List<DropdownMenuItem<Timer>> buildDropDownMenuItems(List times) {
    List<DropdownMenuItem<Timer>> items = List();
    for (Timer val in times) {
      items.add(DropdownMenuItem(
        value: val,
        child: Text(val.name),
      ));
    }
    return items;
  }

  void _click() {
    _setAlarm(_selectTime);
  }

  void _setAlarm(Timer stime) {
    if (stime.id == 1) {
      _demoNotification_one();
    } else if (stime.id == 2) {
      _demoNotification_two();
    } else if (stime.id == 3) {
      _demoNotification_three();
    } else if (stime.id == 4) {
      _demoNotification_four();
    }
  }

  Widget build(BuildContext context) {
    final deteData = Provider.of<Details>(context);
    Timer freq = deteData.frequency;
    return Container(
      child: Column(
        children: <Widget>[
          Text("Select Alarm Frequency"),
          SizedBox(
            height: 10,
          ),
          DropdownButton(
            elevation: 25,
            value: _selectTime,
            items: _dropdownMenuItem,
            onChanged: (Timer selectTime) {
              setState(() {
                _selectTime = selectTime;
                deteData.changefreq(selectTime);
              });
            },
          ),
          Text("Selected : ${freq.name}"),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            child: Text("Set Alarm"),
            onPressed: _click,
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            child: Text("Cancel Alarm"),
            onPressed: _cancelNotification,
          )
        ],
      ),
    );
  }
}
