import 'package:injectable/injectable.dart';

import '../models/article_source_domain_model.dart';
import '../repositories/get_sources_repo.dart';
import '../services/auth_service.dart';

@injectable
class GetSourcesUsecase {
  GetSourcesUsecase({
    required this.authService,
    required this.getSourcesRepo,
  });

  final GetSourcesRepo getSourcesRepo;
  final AuthService authService;

  Future<List<ArticleSourceDomainModel>> call({
    /// Find sources that display news of this category. Possible options: businessentertainmentgeneralhealthsciencesportstechnology. Default: all categories.
    String? category,

    /// Find sources that display news in a specific language. Possible options: ardeenesfrheitnlnoptrusvudzh. Default: all languages.
    String language = 'en',

    /// Find sources that display news in a specific country. Possible options: aearataubebgbrcachcncocuczdeegfrgbgrhkhuidieilinitjpkrltlvmamxmyngnlnonzphplptrorsrusasesgsiskthtrtwuausveza. Default: all countries.
    String country = 'us',
  }) =>
      getSourcesRepo.getSources(
        apiKey: authService.token,
        category: category,
        language: language,
        country: country,
      );
}
