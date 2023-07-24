import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:newsapi_demo/src/presentation/utils/l10n_utils.dart';

void main() {
  group('getLocalizedTime tests - ', () {
    test(
        'WHEN use en_US locale '
        'THEN should return correct date time string', () async {
      await initializeDateFormatting('en_US');

      expect(
        getLocalizedTime(
          const Locale('en', 'US'),
          '2023-07-24T14:44:00.723505Z',
        ),
        'Monday, July 24, 2023 5:44:00 PM',
      );
    });

    test(
        'WHEN use de_DE locale '
        'THEN should return correct date time string', () async {
      await initializeDateFormatting('de_DE');

      expect(
        getLocalizedTime(
          const Locale('de', 'DE'),
          '2023-07-24T14:44:00.723505Z',
        ),
        'Montag, 24. Juli 2023 17:44:00',
      );
    });
  });
}
