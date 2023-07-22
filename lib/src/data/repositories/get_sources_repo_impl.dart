import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/models/article_source_domain_model.dart';
import '../../domain/repositories/get_sources_repo.dart';

@Injectable(as: GetSourcesRepo)
class GetSourcesRepoImpl implements GetSourcesRepo {
  GetSourcesRepoImpl({
    required this.client,
  });

  @protected
  final http.Client client;

  @override
  Future<List<ArticleSourceDomainModel>> getSources({
    required String apiKey,
    String? category,
    String language = 'en',
    String country = 'us',
  }) async =>
      [];
}
