import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import 'models/sources/sources_request.dart';
import 'models/sources/sources_response.dart';

const _url = 'newsapi.org';
const _scheme = 'https';

class NewsApi {
  NewsApi({
    required this.client,
  });

  @protected
  final http.Client client;

  Future<SourcesResponse> getSources({
    required SourcesRequest sourcesRequest,
  }) async {
    final url = Uri(
      scheme: _scheme,
      host: _url,
      path: 'v2/top-headlines/sources',
      queryParameters: sourcesRequest.toJson(),
    );

    final response = await client.get(url);

    final json = checkResponse(response);

    return SourcesResponse.fromJson(json);
  }

  @visibleForTesting
  Map<String, dynamic> checkResponse(http.Response response) {
    final statusCode = response.statusCode;

    if (statusCode < 200 || statusCode >= 300) {
      throw HttpException(
          'Wrong status code=$statusCode, reason=${response.reasonPhrase}');
    }

    final json = jsonDecode(response.body);

    if (json is! Map<String, dynamic>) {
      throw HttpException('Wrong format of body=$json');
    }

    if (json['status'] != 'ok') {
      throw HttpException(
          'Request error code=${json['code']}, message=${json['message']}');
    }

    return json;
  }
}
