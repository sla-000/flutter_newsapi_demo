import 'package:injectable/injectable.dart';
import 'package:news_api/models/sources/sources_response.dart';

import '../../domain/models/article_source_domain_model.dart';

@injectable
class SourcesResponseMapper {
  List<ArticleSourceDomainModel> call(SourcesResponse response) =>
      response.sources
          .map((source) => ArticleSourceDomainModel(
                id: source.id,
                name: source.name,
              ))
          .toList();
}
