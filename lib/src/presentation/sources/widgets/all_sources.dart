import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/models/article_source_domain_model.dart';
import '../cubits/sources_cubit.dart';

const _switchDuration = Duration(milliseconds: 500);

class AllSources extends StatelessWidget {
  const AllSources({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<SourcesCubit, SourcesState>(
        builder: (context, state) => state.when(
          initial: () => const AnimatedSwitcher(
            key: Key('AllSources'),
            duration: _switchDuration,
            child: SizedBox.shrink(),
          ),
          loading: () => const AnimatedSwitcher(
            key: Key('AllSources'),
            duration: _switchDuration,
            child: SizedBox(
              height: 100,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          success: (sources, selectedIds) => AnimatedSwitcher(
            key: const Key('AllSources'),
            duration: _switchDuration,
            child: SourcesListLoaded(
              sources: sources,
              selectedIds: selectedIds,
            ),
          ),
          error: (error, _) => AnimatedSwitcher(
            key: const Key('AllSources'),
            duration: _switchDuration,
            child: Center(child: Text('Error: $error')),
          ),
        ),
      );
}

class SourcesListLoaded extends StatelessWidget {
  const SourcesListLoaded({
    super.key,
    required this.sources,
    required this.selectedIds,
  });

  final List<ArticleSourceDomainModel> sources;
  final Set<String> selectedIds;

  @override
  Widget build(BuildContext context) {
    if (sources.isEmpty) {
      return const Center(child: Text('No sources, try to refresh'));
    }

    return Wrap(
      spacing: 8,
      children: sources
          .map(
            (source) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: SourceChip(
                id: source.id,
                name: source.name,
                selected: selectedIds.any((element) => element == source.id),
              ),
            ),
          )
          .toList(growable: false),
    );
  }
}

class SourceChip extends StatelessWidget {
  const SourceChip({
    super.key,
    required this.id,
    required this.name,
    required this.selected,
  });

  final String id;
  final String name;
  final bool selected;

  @override
  Widget build(BuildContext context) => ChoiceChip(
        key: Key(id),
        selected: selected,
        label: Text(name),
        onSelected: (selected) {
          final sourcesCubit = context.read<SourcesCubit>();

          selected ? sourcesCubit.select(id) : sourcesCubit.unselect(id);
        },
      );
}
