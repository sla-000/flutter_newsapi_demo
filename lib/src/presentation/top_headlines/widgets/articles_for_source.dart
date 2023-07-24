import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../sources/cubits/sources_cubit.dart';
import 'articles_list.dart';

const _switchDuration = Duration(milliseconds: 500);

class ArticlesForSource extends StatelessWidget {
  const ArticlesForSource({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<SourcesCubit, SourcesState>(
        builder: (context, state) => state.maybeWhen(
          success: (_, selectedIds) => ArticlesList(selectedIds: selectedIds),
          orElse: SizedBox.shrink,
        ),
      );
}
