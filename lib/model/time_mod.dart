import 'package:covid_care/widgets/dropdown.dart';

class Timer {
 int id;
 String name;

  Timer(this.id,this.name);

  static List<Timer> getTime(){
    return <Timer>[
      Timer(1,'30min'),
      Timer(2,'1hr'),
      Timer(3,'2hrs'),
      Timer(4,'4hrs'),
    ];
  }
}