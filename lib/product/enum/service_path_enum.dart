// ignore_for_file: constant_identifier_names, public_member_api_docs

enum ServicePath { POPULAR_MOVIES, TOP_RATED_MOVIES, UP_COMING_MOVIES }

extension ServicePathExtension on ServicePath {
  String get rawValue {
    switch (this) {
      case ServicePath.POPULAR_MOVIES:
        return 'movie/popular';
      case ServicePath.TOP_RATED_MOVIES:
        return 'movie/top_rated';
       case ServicePath.UP_COMING_MOVIES:
        return 'movie/upcoming';
    }
  }
}
