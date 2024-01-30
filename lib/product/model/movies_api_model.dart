// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:vexana/vexana.dart';

class Movie extends INetworkModel<Movie> with EquatableMixin {
  Movie({
    this.title,
    this.overview,
    this.posterPath,
    this.backdropPath,
    this.voteAverage,
    this.releaseDate,
    this.originalTitle,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        title: json['title'] as String?,
        overview: json['overview'] as String?,
        posterPath: json['poster_path'] as String?,
        backdropPath: json['backdrop_path'] as String?,
        voteAverage: (json['vote_average'] as num?)?.toDouble(),
        releaseDate: json['release_date'] as String?,
        originalTitle: json['original_title'] as String?,
      );

  final String? title;
  final String? overview;
  final String? posterPath;
  final String? backdropPath;
  final double? voteAverage;
  final String? releaseDate;
  final String? originalTitle;

  @override
  Movie fromJson(Map<String, dynamic> json) => Movie.fromJson(json);

  @override
  List<Object?> get props => [
        title,
        overview,
        posterPath,
        backdropPath,
        voteAverage,
        releaseDate,
        originalTitle,
      ];

  @override
  Map<String, dynamic> toJson() => {
        'title': title,
        'overview': overview,
        'poster_path': posterPath,
        'backdrop_path': backdropPath,
        'vote_average': voteAverage,
        'release_date': releaseDate,
        'original_title': originalTitle,
      };
}
