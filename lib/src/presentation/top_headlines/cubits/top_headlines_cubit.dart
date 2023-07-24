import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models/article_domain_model.dart';
import '../../../domain/usecases/get_top_headlines_usecase.dart';

part 'top_headlines_cubit.freezed.dart';
part 'top_headlines_state.dart';

@injectable
class TopHeadlinesCubit extends Cubit<TopHeadlinesState> {
  TopHeadlinesCubit({
    required this.getTopHeadlinesUsecase,
  }) : super(const TopHeadlinesState.initial());

  @protected
  final GetTopHeadlinesUsecase getTopHeadlinesUsecase;

  Future<void> load({required Iterable<String> sourceIds}) async {
    try {
      emit(const TopHeadlinesState.loading());

      final articles = await getTopHeadlinesUsecase.call(
        sources: sourceIds.isEmpty ? null : sourceIds,
      );

      emit(TopHeadlinesState.success(articles: articles));
    } on Exception catch (error, stackTrace) {
      emit(TopHeadlinesState.error(error: error, stackTrace: stackTrace));
    }
  }
}
