import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:newsapi_demo/src/presentation/sources/cubits/sources_cubit.dart';
import 'package:newsapi_demo/src/presentation/sources/widgets/all_sources.dart';

class _MockSourcesCubit extends Mock implements SourcesCubit {}

const _id = '_id';
const _name = '_name';

final _mockSourcesCubit = _MockSourcesCubit();

void main() {
  setUp(() {
    when(() => _mockSourcesCubit.stream)
        .thenAnswer((_) => const Stream.empty());
    when(_mockSourcesCubit.close).thenAnswer((_) async {});
  });

  tearDown(() {
    reset(_mockSourcesCubit);
  });

  group(
    'SourceChip tests - ',
    () {
      testWidgets(
        'WHEN widget created '
        'THEN should contain correct widgets',
        (tester) async {
          await _pumpWidget(
            tester,
            const SourceChip(
              id: _id,
              name: _name,
              selected: true,
            ),
          );

          expect(find.byType(ChoiceChip), findsOneWidget);
          expect(find.text(_name), findsOneWidget);
        },
      );

      testWidgets(
        'WHEN widget is selected '
        'THEN after tap should call unselect method',
        (tester) async {
          await _pumpWidget(
            tester,
            const SourceChip(
              id: _id,
              name: _name,
              selected: true,
            ),
          );

          await tester.tap(find.text(_name));
          await tester.pumpAndSettle();

          verify(() => _mockSourcesCubit.unselect(any())).called(1);
        },
      );

      testWidgets(
        'WHEN widget is selected '
        'THEN after tap should call unselect method',
        (tester) async {
          await _pumpWidget(
            tester,
            const SourceChip(
              id: _id,
              name: _name,
              selected: false,
            ),
          );

          await tester.tap(find.text(_name));
          await tester.pumpAndSettle();

          verify(() => _mockSourcesCubit.select(any())).called(1);
        },
      );
    },
  );
}

Future<void> _pumpWidget(WidgetTester tester, Widget child) async {
  await tester.pumpWidget(
    MaterialApp(
      home: Scaffold(
        body: BlocProvider<SourcesCubit>(
          create: (_) => _mockSourcesCubit,
          child: child,
        ),
      ),
    ),
  );
}
