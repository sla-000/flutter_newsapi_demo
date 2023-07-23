import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/models/article_domain_model.dart';
import '../../../domain/usecases/get_sources_usecase.dart';
import '../../../domain/usecases/get_top_headlines_usecase.dart';

part 'top_headlines_cubit.freezed.dart';
part 'top_headlines_state.dart';

class TopHeadlinesCubit extends Cubit<TopHeadlinesState> {
  TopHeadlinesCubit({
    required this.getTopHeadlinesUsecase,
    required this.topHeadlinesStateSuccessMapper,
  }) : super(const TopHeadlinesState.initial());

  @protected
  final GetTopHeadlinesUsecase getTopHeadlinesUsecase;

  @protected
  final TopHeadlinesStateSuccessMapper topHeadlinesStateSuccessMapper;

  Future<void> load({required List<String> sourceIds}) async {
    try {
      emit(const TopHeadlinesState.loading());

      final sources = await getTopHeadlinesUsecase.call(sources: );

      emit(topHeadlinesStateSuccessMapper.call(sources));
    } on Exception catch (error, stackTrace) {
      emit(TopHeadlinesState.error(error: error, stackTrace: stackTrace));
    }
  }
}
