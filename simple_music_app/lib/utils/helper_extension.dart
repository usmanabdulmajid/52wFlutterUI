import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

extension MediaQuryExtension on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}

extension IntExtention on int {
  String get toDuration {
    initializeDateFormatting('en_GB');
    final dateTime = DateTime.fromMillisecondsSinceEpoch(this);
    final time = DateFormat('mm:ss', 'en_GB').format(dateTime);
    return time;
  }
}
