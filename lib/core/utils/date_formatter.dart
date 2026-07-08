import 'package:intl/intl.dart';

/// =======================================================
/// Date Formatter
/// =======================================================

class DateFormatter {
  DateFormatter._();

  static String short(DateTime date) {
    return DateFormat("dd/MM/yyyy").format(date);
  }

  static String long(DateTime date) {
    return DateFormat("dd MMMM yyyy", "id_ID").format(date);
  }

  static String monthYear(DateTime date) {
    return DateFormat("MMMM yyyy", "id_ID").format(date);
  }
}