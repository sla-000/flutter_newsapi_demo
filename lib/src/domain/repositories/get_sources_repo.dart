import '../models/article_source_domain_model.dart';

abstract class GetSourcesRepo {
  Future<List<ArticleSourceDomainModel>> getSources({
    /// Your API key. Alternatively you can provide this via the X-Api-Key HTTP header.
    required String apiKey,

    /// Find sources that display news of this category. Possible options: businessentertainmentgeneralhealthsciencesportstechnology. Default: all categories.
    String? category,

    /// Find sources that display news in a specific language. Possible options: ardeenesfrheitnlnoptrusvudzh. Default: all languages.
    String language = 'en',

    /// Find sources that display news in a specific country. Possible options: aearataubebgbrcachcncocuczdeegfrgbgrhkhuidieilinitjpkrltlvmamxmyngnlnonzphplptrorsrusasesgsiskthtrtwuausveza. Default: all countries.
    String country = 'us',
  });
}
