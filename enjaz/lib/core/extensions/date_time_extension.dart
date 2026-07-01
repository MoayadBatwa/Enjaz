import 'package:enjaz/core/extensions/string_extensions.dart';

extension DateTimeExtension on DateTime {

  /// Convert from DateTime() → "DD/MM/YYYY"
  String get toDayMonthYear {
    return toString().split(" ")[0].toDayMonthYear;
  }
}
