import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/di/di.dart';
import 'src/domain/models/article_source_domain_model.dart';
import 'src/presentation/sources/cubit/sources_cubit.dart';

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
        child: const AllSourcesNews(),
      );
}

class AllSourcesNews extends StatelessWidget {
  const AllSourcesNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<SourcesCubit, SourcesState>(
        builder: (context, state) => state.when(
          initial: SizedBox.shrink,
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (sources) => AllSourcesNewsSuccess(sources: sources),
          error: (error, _) => Center(child: Text('Error: $error')),
        ),
      );
}

class AllSourcesNewsSuccess extends StatelessWidget {
  const AllSourcesNewsSuccess({
    super.key,
    required this.sources,
  });

  final List<ArticleSourceDomainModel> sources;

  @override
  Widget build(BuildContext context) {
    if (sources.isEmpty) {
      return const Center(child: Text('No sources'));
    }

    return DefaultTabController(
      length: sources.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('NewsAPI Demo'),
          bottom: TabBar(
            isScrollable: true,
            tabs: sources
                .map((source) => Tab(text: source.name))
                .toList(growable: false),
          ),
        ),
        body: TabBarView(
          children: sources
              .map((source) => ASourceNews(source: source))
              .toList(growable: false),
        ),
      ),
    );
  }
}

class ASourceNews extends StatelessWidget {
  const ASourceNews({
    super.key,
    required this.source,
  });

  final ArticleSourceDomainModel source;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(source.id));
  }
}
