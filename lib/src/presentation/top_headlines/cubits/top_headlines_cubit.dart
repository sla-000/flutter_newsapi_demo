import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models/article_domain_model.dart';
import '../../../domain/usecases/get_top_headlines_usecase.dart';

part 'top_headlines_cubit.freezed.dart';
part 'top_headlines_state.dart';

const _refreshPeriod = Duration(minutes: 5);

@injectable
class TopHeadlinesCubit extends Cubit<TopHeadlinesState> {
  TopHeadlinesCubit({
    required this.getTopHeadlinesUsecase,
  }) : super(const TopHeadlinesState.initial()) {
    _timer = Timer.periodic(_refreshPeriod, _onTimer);
  }

  @protected
  final GetTopHeadlinesUsecase getTopHeadlinesUsecase;

  late final Timer _timer;

  void _onTimer(_) {
    final currentState = state;

    if (currentState is TopHeadlinesStateSuccess) {
      final sourcesIds = currentState.sourcesIds;
      if (sourcesIds.isNotEmpty) {
        unawaited(load(sourceIds: sourcesIds));
      }
    }
  }

  @override
  Future<void> close() async {
    _timer.cancel();

    await super.close();
  }

  Future<void> load({required Iterable<String> sourceIds}) async {
    if (sourceIds.isEmpty) {
      emit(const TopHeadlinesState.initial());
      return;
    }

    try {
      emit(const TopHeadlinesState.loading());

      final articles = await getTopHeadlinesUsecase.call(sources: sourceIds);

      emit(
        TopHeadlinesState.success(
          articles: articles,
          sourcesIds: sourceIds.toSet(),
        ),
      );
    } on Exception catch (error, stackTrace) {
      emit(TopHeadlinesState.error(error: error, stackTrace: stackTrace));
    }
  }
}
