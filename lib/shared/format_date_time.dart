import 'package:intl/intl.dart';

class DateFormateAppDefault{

  String formatDateTime(String dateTimeString) {
    DateTime dateTime = DateTime.parse(dateTimeString);
    String formattedDate = "Dia ${dateTime.day.toString().padLeft(2, '0')}";
    String formattedTime = "${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}";
    return "$formattedDate às $formattedTime";
  }

  String formatDateToday(DateTime data) {
    String ano = data.year.toString();
    String mes = data.month.toString().padLeft(2, '0');
    String dia = data.day.toString().padLeft(2, '0');
    return '$ano-$mes-$dia';
  }

}

String calculateRemainingTimeString(String dateTimeString) {
  final format = DateFormat("yyyy-MM-dd HH:mm:ss");
  final dateTime = format.parse(dateTimeString);
  final now = DateTime.now();
  final difference = dateTime.difference(now);

  if (difference.isNegative) {
    return "Tempo expirado";
  }

  final days = difference.inDays;
  final hours = difference.inHours.remainder(24);
  final minutes = difference.inMinutes.remainder(60);

  if (days > 0) {
    if (hours > 0) {
      return "${days}d ${hours}h ${minutes}m";
    } else {
      return "${days}d ${minutes}m";
    }
  } else if (hours > 0) {
    return "$hours h ${minutes}m";
  } else if (minutes > 0) {
    return "$minutes m";
  } else {
    return "Tempo expirado";
  }
}


