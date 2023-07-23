import 'package:injectable/injectable.dart';

import '../../../domain/models/article_source_domain_model.dart';
import '../cubit/sources_cubit.dart';

@injectable
class SourcesStateSuccessMapper {
  SourcesState call(List<ArticleSourceDomainModel> sources) =>
      SourcesState.success(sources: sources);
}
