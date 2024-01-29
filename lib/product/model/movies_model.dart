// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'movies_model.g.dart'; 

@JsonSerializable()
@immutable
// This model will be used in the future
final class Movie extends INetworkModel<Movie> with EquatableMixin {
  Movie({
     this.title,
     this.posterPath,
     this.backdropPath,
     this.overview,
     this.releaseDate,
     this.voteAverage,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return _$MovieFromJson(json);
  }
  /// User model to map object
  @override
  Map<String, dynamic> toJson() => _$MovieToJson(this);

  final String? title;
  final String? posterPath;
  final String? backdropPath;
  final String? overview;
  final String? releaseDate;
  final double? voteAverage;

  @override
  List<Object?> get props => [
        title,
        posterPath,
        backdropPath,
        overview,
        releaseDate,
        voteAverage,
      ];

  Movie copyWith({
    String? title,
    String? posterPath,
    String? backdropPath,
    String? overview,
    String? releaseDate,
    double? voteAverage,
  }) {
    return Movie(
      title: title ?? this.title,
      posterPath: posterPath ?? this.posterPath,
      backdropPath: backdropPath ?? this.backdropPath,
      overview: overview ?? this.overview,
      releaseDate: releaseDate ?? this.releaseDate,
      voteAverage: voteAverage ?? this.voteAverage,
    );
  }
  
  @override
  Movie fromJson(Map<String, dynamic> json) {
    return _$MovieFromJson(json);
  }
}
