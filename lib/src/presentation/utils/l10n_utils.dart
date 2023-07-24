import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String getLocalizedTime(Locale locale, String time) {
  final localTime = DateTime.parse(time).toLocal();
  final currentLocale = locale.toString();

  return DateFormat.yMMMMEEEEd(currentLocale).add_jms().format(localTime);
}
