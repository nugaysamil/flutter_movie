// ignore_for_file: unnecessary_lambdas, avoid_dynamic_calls, public_member_api_docs

import 'dart:convert';

import 'package:flutter_movie/product/model/result_model.dart';
import 'package:http/http.dart' as http;

class Api {
  static const _trendingUrl =
      'https://api.themoviedb.org/3/movie/popular?api_key=a16c68727cb7d3d0e78b3f5ad76e4f34';

  Future<List<Result>> getTrending() async {
    final response = await http.get(Uri.parse(_trendingUrl));

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData
          .map(
              (movieJson) => Result.fromJson(movieJson as Map<String, dynamic>))
          .toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
