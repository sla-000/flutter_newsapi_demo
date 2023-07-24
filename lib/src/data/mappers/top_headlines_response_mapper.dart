import 'package:injectable/injectable.dart';
import 'package:news_api/models/top_headlines/top_headlines_response.dart';

import '../../domain/models/article_domain_model.dart';

@injectable
class TopHeadlinesResponseMapper {
  List<ArticleDomainModel> call(TopHeadlinesResponse response) =>
      response.articles
          .map(
            (source) => ArticleDomainModel(
              author: source.author,
              content: source.content,
              description: source.description,
              publishedAt: source.publishedAt,
              title: source.title,
              url: source.url,
            ),
          )
          .toList(growable: false);
}
