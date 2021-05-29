abstract class DateFormater {
  static String formatDateToyyyyMMdd(DateTime dateTime,
      [String separator = '']) {
    return '${'${dateTime.year}'}$separator${convertTimeIntToString(dateTime.month)}$separator${convertTimeIntToString(dateTime.day)}';
  }

  static String formatDateToddMM(DateTime dateTime, [String separator = '']) {
    return convertTimeIntToString(dateTime.day) +
        separator +
        convertTimeIntToString(dateTime.month);
  }

  static String convertTimeIntToString(int number) {
    if (number < 10) return '0$number';
    return '$number';
  }

  static String dateToHourMinuteDayMonthFormat(DateTime date) {
    return '${convertTimeIntToString(date.hour)}:${convertTimeIntToString(date.minute)} ${convertTimeIntToString(date.day)}.${convertTimeIntToString(date.month)}';
  }

  static String dateToHourMinuteFormat(DateTime date) {
    return '${convertTimeIntToString(date.hour)}:${convertTimeIntToString(date.minute)}';
  }

  static String dayName(int day) {
    switch (day) {
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      case 7:
        return 'Sunday';
    }
    return 'unknown';
  }

  static String shortDayName(int day) {
    switch (day) {
      case 1:
        return 'MO';
      case 2:
        return 'TU';
      case 3:
        return 'WE';
      case 4:
        return 'TH';
      case 5:
        return 'FR';
      case 6:
        return 'SA';
      case 7:
        return 'SU';
    }
    return 'WTF';
  }
}
