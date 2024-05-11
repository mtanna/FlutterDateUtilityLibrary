library date_utility;

import 'package:intl/intl.dart';

class DateUtility {
  String millisecondToDate(int timestamp,
      {String formatPattern = 'yyyy-MM-dd'}) {
    try {
      DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
      DateFormat dateFormatee = DateFormat(formatPattern);
      String dateFormat = dateFormatee.format(dateTime);
      return dateFormat;
    } catch (e) {
      return 'InValid date format';
    }
  }

  /// [dateTomillisecond] this function convert date into millisecond
  dynamic dateToMillisecond(String timestamp) {
    try {
      if (timestamp == '') {
        return DateTime.now().millisecondsSinceEpoch;
      }
      DateTime dateTime = DateTime.parse(timestamp);

      int dateFormat = dateTime.millisecondsSinceEpoch;
      return dateFormat;
    } catch (e) {
      return 'InValid date format';
    }
  }

  String changeDateFormat(
      String currentFormatPattern, String aspectedFormatPattern) {
    try {
      DateTime date = DateTime.parse(currentFormatPattern);
      DateFormat dateFormatee = DateFormat(aspectedFormatPattern);
      String dateFormat = dateFormatee.format(date);
      return dateFormat;
    } catch (e) {
      return 'InValid date format';
    }
  }

  // String changeDateFormatWithMilliSecond(
  //     int currentMilliSecond, String aspectedFormatPattern) {
  //   try {
  //     DateTime date = DateTime.fromMillisecondsSinceEpoch(currentMilliSecond);
  //     DateFormat dateFormatee = DateFormat(aspectedFormatPattern);
  //     String dateFormat = dateFormatee.format(date);
  //     return dateFormat;
  //   } catch (e) {
  //     return 'InValid date format';
  //   }
  // }

  dynamic daysBetween(String fromDate, String toDate) {
    try {
      DateTime from = DateTime.parse(fromDate);
      DateTime to = DateTime.parse(toDate);
      from = DateTime(from.year, from.month, from.day);
      to = DateTime(to.year, to.month, to.day);
      return (to.difference(from).inHours / 24).round();
    } catch (e) {
      return 'InValid date format';
    }
  }

  dynamic daysBetweenWithMilliSecond(
      int fromDateMillisecond, int toDateMillisecond) {
    try {
      DateTime from = DateTime.fromMillisecondsSinceEpoch(fromDateMillisecond);
      DateTime to = DateTime.fromMillisecondsSinceEpoch(toDateMillisecond);
      from = DateTime(from.year, from.month, from.day);
      to = DateTime(to.year, to.month, to.day);
      return (to.difference(from).inHours / 24).round();
    } catch (e) {
      return 'InValid date format';
    }
  }

  String timeAgoSinceDate(String dateString, {bool numericDates = true}) {
    try {
      DateTime date = DateTime.parse(dateString);
      final date2 = DateTime.now();
      final difference = date2.difference(date);

      if ((difference.inDays / 365).floor() >= 2) {
        return '${(difference.inDays / 365).floor()} years ago';
      } else if ((difference.inDays / 365).floor() >= 1) {
        return (numericDates) ? '1 year ago' : 'Last year';
      } else if ((difference.inDays / 30).floor() >= 2) {
        return '${(difference.inDays / 365).floor()} months ago';
      } else if ((difference.inDays / 30).floor() >= 1) {
        return (numericDates) ? '1 month ago' : 'Last month';
      } else if ((difference.inDays / 7).floor() >= 2) {
        return '${(difference.inDays / 7).floor()} weeks ago';
      } else if ((difference.inDays / 7).floor() >= 1) {
        return (numericDates) ? '1 week ago' : 'Last week';
      } else if (difference.inDays >= 2) {
        return '${difference.inDays} days ago';
      } else if (difference.inDays >= 1) {
        return (numericDates) ? '1 day ago' : 'Yesterday';
      } else if (difference.inHours >= 2) {
        return '${difference.inHours} hours ago';
      } else if (difference.inHours >= 1) {
        return (numericDates) ? '1 hour ago' : 'An hour ago';
      } else if (difference.inMinutes >= 2) {
        return '${difference.inMinutes} minutes ago';
      } else if (difference.inMinutes >= 1) {
        return (numericDates) ? '1 minute ago' : 'A minute ago';
      } else if (difference.inSeconds >= 3) {
        return '${difference.inSeconds} seconds ago';
      } else {
        return 'Just now';
      }
    } catch (e) {
      return 'InValid date format';
    }
  }

  String timeAgoSinceMilliseconds(int milliseconds,
      {bool numericDates = true}) {
    try {
      DateTime date = DateTime.fromMillisecondsSinceEpoch(milliseconds);
      final date2 = DateTime.now();
      final difference = date2.difference(date);

      if ((difference.inDays / 365).floor() >= 2) {
        return '${(difference.inDays / 365).floor()} years ago';
      } else if ((difference.inDays / 365).floor() >= 1) {
        return (numericDates) ? '1 year ago' : 'Last year';
      } else if ((difference.inDays / 30).floor() >= 2) {
        return '${(difference.inDays / 30).floor()} months ago';
      } else if ((difference.inDays / 30).floor() >= 1) {
        return (numericDates) ? '1 month ago' : 'Last month';
      } else if ((difference.inDays / 7).floor() >= 2) {
        return '${(difference.inDays / 7).floor()} weeks ago';
      } else if ((difference.inDays / 7).floor() >= 1) {
        return (numericDates) ? '1 week ago' : 'Last week';
      } else if (difference.inDays >= 2) {
        return '${difference.inDays} days ago';
      } else if (difference.inDays >= 1) {
        return (numericDates) ? '1 day ago' : 'Yesterday';
      } else if (difference.inHours >= 2) {
        return '${difference.inHours} hours ago';
      } else if (difference.inHours >= 1) {
        return (numericDates) ? '1 hour ago' : 'An hour ago';
      } else if (difference.inMinutes >= 2) {
        return '${difference.inMinutes} minutes ago';
      } else if (difference.inMinutes >= 1) {
        return (numericDates) ? '1 minute ago' : 'A minute ago';
      } else if (difference.inSeconds >= 3) {
        return '${difference.inSeconds} seconds ago';
      } else {
        return 'Just now';
      }
    } catch (e) {
      return 'InValid date format';
    }
  }
}
