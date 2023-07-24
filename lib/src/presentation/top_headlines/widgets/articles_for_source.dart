import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../di/di.dart';
import '../../sources/cubits/sources_cubit.dart';
import '../cubits/top_headlines_cubit.dart';
import 'articles_list.dart';

const _switchDuration = Duration(milliseconds: 500);

class ArticlesForSource extends StatelessWidget {
  const ArticlesForSource({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => di<TopHeadlinesCubit>(),
        child: BlocConsumer<SourcesCubit, SourcesState>(
          listener: (context, state) => state.maybeWhen(
            success: (_, selectedIds) => unawaited(
              context.read<TopHeadlinesCubit>().load(sourceIds: selectedIds),
            ),
            orElse: () => null,
          ),
          builder: (context, state) => state.maybeWhen(
            success: (_, selectedIds) => const ArticlesList(),
            orElse: SizedBox.shrink,
          ),
        ),
      );
}
