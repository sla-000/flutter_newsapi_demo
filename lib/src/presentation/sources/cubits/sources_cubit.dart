import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models/article_source_domain_model.dart';
import '../../../domain/usecases/get_sources_usecase.dart';
import '../mappers/sources_state_success_mapper.dart';

part 'sources_cubit.freezed.dart';
part 'sources_state.dart';

@injectable
class SourcesCubit extends Cubit<SourcesState> {
  SourcesCubit({
    required this.getSourcesUsecase,
    required this.sourcesStateSuccessMapper,
  }) : super(const SourcesState.initial());

  @protected
  final GetSourcesUsecase getSourcesUsecase;

  @protected
  final SourcesStateSuccessMapper sourcesStateSuccessMapper;

  Future<void> load() async {
    try {
      emit(const SourcesState.loading());

      final sources = await getSourcesUsecase.call();

      emit(sourcesStateSuccessMapper.call(sources));
    } on Exception catch (error, stackTrace) {
      emit(SourcesState.error(error: error, stackTrace: stackTrace));
    }
  }
}
