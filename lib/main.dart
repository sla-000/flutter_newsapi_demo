import 'package:flutter/material.dart';

import 'src/di/di.dart';
import 'src/presentation/sources/cubit/sources_cubit.dart';
import 'src/presentation/sources/widgets/all_sources.dart';

void main() {
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        darkTheme: ThemeData.dark(
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) => const AllSources();
}
