import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:news_api/news_api.dart';

import 'di.config.dart';

final di = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  di.init();

  di.registerLazySingleton<http.Client>(http.Client.new);

  di.registerLazySingleton<NewsApi>(() => NewsApi(client: di<http.Client>()));
}
