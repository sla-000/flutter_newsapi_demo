import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/di/di.dart';
import 'src/presentation/sources/cubits/sources_cubit.dart';
import 'src/presentation/sources/widgets/all_sources.dart';
import 'src/presentation/top_headlines/widgets/articles_for_source.dart';

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
  Widget build(BuildContext context) => BlocProvider(
        create: (_) {
          final sourcesCubit = di<SourcesCubit>();

          unawaited(sourcesCubit.load());

          return sourcesCubit;
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('NewsAPI Demo'),
          ),
          body: const AppBody(),
        ),
      );
}

class AppBody extends StatelessWidget {
  const AppBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) => RefreshIndicator(
        onRefresh: context.read<SourcesCubit>().load,
        child: const SingleChildScrollView(
          child: Scrollbar(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AllSources(),
                  SizedBox(height: 16),
                  ArticlesForSource(),
                ],
              ),
            ),
          ),
        ),
      );
}
