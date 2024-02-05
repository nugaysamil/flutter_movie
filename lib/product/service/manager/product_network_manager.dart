// ignore_for_file: public_member_api_docs, unused_field

import 'package:dio/dio.dart';

class ProjectNetworkManager {
  ProjectNetworkManager._init() {
    dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl,
      ),
    );
  }
  static ProjectNetworkManager? _instance;

  static ProjectNetworkManager? get instance {
    if (_instance != null) return _instance!;
    _instance = ProjectNetworkManager._init();
    return _instance!;
  }

  final String _baseUrl = 'https://api.themoviedb.org/3/';

  // https://api.themoviedb.org/3/movie/top_rated?api_key=a16c68727cb7d3d0e78b3f5ad76e4f34

  late final Dio dio;
}
