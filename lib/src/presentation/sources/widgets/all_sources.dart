import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/di.dart';
import '../../../domain/models/article_source_domain_model.dart';
import '../cubits/sources_cubit.dart';

class AllSources extends StatelessWidget {
  const AllSources({
    super.key,
  });

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
              .map((source) => OneSourceNews(source: source))
              .toList(growable: false),
        ),
      ),
    );
  }
}

class OneSourceNews extends StatelessWidget {
  const OneSourceNews({
    super.key,
    required this.source,
  });

  final ArticleSourceDomainModel source;

  @override
  Widget build(BuildContext context) => Center(child: Text(source.id));
}
