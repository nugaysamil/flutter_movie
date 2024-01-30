/* // ignore_for_file: public_member_api_docs, sort_constructors_first, inference_failure_on_collection_literal, lines_longer_than_80_chars, avoid_dynamic_calls, inference_failure_on_untyped_parameter

import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:vexana/vexana.dart';


class Movie extends INetworkModel<Movie> with EquatableMixin {
  final int? page;
  final List<Result>? results;
  final int? totalPages;
  final int? totalResults;

  Movie({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  Movie copyWith({
    int? page,
    List<Result>? results,
    int? totalPages,
    int? totalResults,
  }) =>
      Movie(
        page: page ?? this.page,
        results: results ?? this.results,
        totalPages: totalPages ?? this.totalPages,
        totalResults: totalResults ?? this.totalResults,
      );

  factory Movie.fromRawJson(String str) {
    final jsonMap = json.decode(str) as Map<String, dynamic>;
    return Movie().fromJson(jsonMap);
  }


  String toRawJson() => json.encode(toJson());

  @override
  Map<String, dynamic> toJson() => {
        'page': page,
        'results': results == null
            ? []
            : List<dynamic>.from(results!.map((x) => x.toJson())),
        'total_pages': totalPages,
        'total_results': totalResults,
      };

  @override
  List<Object?> get props => [page, results, totalPages, totalResults];

  @override
  Movie fromJson(Map<String, dynamic> json) {
    return Movie(
      page: json['page'] as int,
      results: json['results'] == null
          ? []
          : List<Result>.from(
              (json['results'] as List).map(
                (dynamic item) => Result.fromJson(item as Map<String, dynamic>),
              ),
            ),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );
  }
}

class Result {
  final bool? adult;
  final String? backdropPath;
  final List<int>? genreIds;
  final int? id;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final DateTime? releaseDate;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  Result({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  Result copyWith({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    DateTime? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) =>
      Result(
        adult: adult ?? this.adult,
        backdropPath: backdropPath ?? this.backdropPath,
        genreIds: genreIds ?? this.genreIds,
        id: id ?? this.id,
        originalLanguage: originalLanguage ?? this.originalLanguage,
        originalTitle: originalTitle ?? this.originalTitle,
        overview: overview ?? this.overview,
        popularity: popularity ?? this.popularity,
        posterPath: posterPath ?? this.posterPath,
        releaseDate: releaseDate ?? this.releaseDate,
        title: title ?? this.title,
        video: video ?? this.video,
        voteAverage: voteAverage ?? this.voteAverage,
        voteCount: voteCount ?? this.voteCount,
      );

  factory Result.fromRawJson(String str) =>
      Result.fromJson(json.decode(str) as Map<String, dynamic>);

  String toRawJson() => json.encode(toJson());

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        adult: json['adult'] == null ? null : json['adult'] as bool,
        backdropPath: json['backdrop_path'] == null
            ? null
            : json['backdrop_path'] as String,
        genreIds: json['genre_ids'] == null
            ? []
            : List<int>.from((json['genre_ids'] as List).map((x) => x as int)),
        id: json['id'] as int,
        originalLanguage: json['original_language'] as String,
        originalTitle: json['original_title'] as String,
        overview: json['overview'] as String,
        popularity: (json['popularity'] as num?)?.toDouble(),
        posterPath: json['poster_path'] as String,
        releaseDate: json['release_date'] == null
            ? null
            : DateTime.parse(json['release_date'] as String),
        title: json['title'] as String,
        video: json['video'] == null ? null : json['video'] as bool,
        voteAverage: (json['vote_average'] as num?)?.toDouble(),
        voteCount: json['vote_count'] as int,
      );

  Map<String, dynamic> toJson() => {
        'adult': adult,
        'backdrop_path': backdropPath,
        'genre_ids':
            genreIds == null ? [] : List<dynamic>.from(genreIds!.map((x) => x)),
        'id': id,
        'original_language': originalLanguage,
        'original_title': originalTitle,
        'overview': overview,
        'popularity': popularity,
        'poster_path': posterPath,
        'release_date':
            "${releaseDate!.year.toString().padLeft(4, '0')}-${releaseDate!.month.toString().padLeft(2, '0')}-${releaseDate!.day.toString().padLeft(2, '0')}",
        'title': title,
        'video': video,
        'vote_average': voteAverage,
        'vote_count': voteCount,
      };
}
 */