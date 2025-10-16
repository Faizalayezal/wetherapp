import 'package:intl/intl.dart';

class Utilities {
  static Map<dynamic, String> imageMap = {
    'Partially cloudy': 'assest/images/nightRain.png',
    'Overcast': 'assest/images/sunSlowRain.png',
    'Clear': 'assest/images/wind.png',
    'null': 'assest/images/nightStatRain.png',
  };

  static String fromateDate(DateTime date) {
    String formatedDate = DateFormat('EEEE d MMM').format(date);
    return formatedDate;
  }

  static String extractDate(String date) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat('d').format(dateTime);
    return formattedDate;
  }

  static String extractDay(String date) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat('EEEE').format(dateTime);
    print({'formate vgr nu text--->$formattedDate'});
    String abreviatedDay = formattedDate.substring(0, 3);
    print({'formate varu text->>$abreviatedDay'});
    return abreviatedDay;
  }

  static String formateTime(String time) {
    DateFormat dateFormat = DateFormat('hh:mm a');
    DateTime dateTime = DateTime.parse('2023-08-08T$time');
    String timeIn12HourFormat = dateFormat.format(dateTime);
    return timeIn12HourFormat; //3:30pm
  }

  static String currantTime() {
    DateFormat dateFormat = DateFormat('hh:mm a');
    DateTime now = DateTime.now();
    String time = dateFormat.format(now);
    return time;
  }

  static String formateTimeWithoutAmPm(String time) {
    DateFormat dateFormat = DateFormat('hh:mm');
    DateTime dateTime = DateTime.parse('2023-08-08T$time');
    String timeIn24HourFormat = dateFormat.format(dateTime);
    return timeIn24HourFormat;
  }

  static bool checkTime(String time) {
    DateFormat dateFormat = DateFormat('hh a');
    DateTime dateTime = DateTime.parse('2023-08-08T$time');
    DateTime now = DateTime.now();
    return dateFormat.format(dateTime) == dateFormat.format(now);
  }
}
