import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/models/article_source_domain_model.dart';
import '../../../domain/usecases/get_sources_usecase.dart';

part 'sources_cubit.freezed.dart';
part 'sources_state.dart';

@injectable
class SourcesCubit extends Cubit<SourcesState> {
  SourcesCubit({
    required this.getSourcesUsecase,
  }) : super(const SourcesState.initial());

  @protected
  final GetSourcesUsecase getSourcesUsecase;

  Future<void> load() async {
    try {
      emit(const SourcesState.loading());

      final sources = await getSourcesUsecase.call();

      emit(SourcesState.success(sources: sources, selectedIds: {}));
    } on Exception catch (error, stackTrace) {
      emit(SourcesState.error(error: error, stackTrace: stackTrace));
    }
  }

  void select(String id) {
    final currentState = state;

    if (currentState is! SourcesStateSuccess) {
      return;
    }

    final currentSelected = Set.of(currentState.selectedIds);
    currentSelected.add(id);

    emit(
      currentState.copyWith(
        selectedIds: currentSelected,
      ),
    );
  }

  void unselect(String id) {
    final currentState = state;

    if (currentState is! SourcesStateSuccess) {
      return;
    }

    final currentSelected = Set.of(currentState.selectedIds);
    currentSelected.remove(id);

    emit(
      currentState.copyWith(
        selectedIds: currentSelected,
      ),
    );
  }
}
