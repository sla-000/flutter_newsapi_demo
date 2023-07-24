import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String getLocalizedTime(BuildContext context, String time) {
  final localTime = DateTime.parse(time).toLocal();
  final locale = Localizations.localeOf(context).toString();

  final dateStr = DateFormat.yMMMMEEEEd(locale).format(localTime);
  final timeStr = DateFormat.Hms(locale).format(localTime);

  return '$dateStr $timeStr';
}
