// ignore_for_file:  sort_constructors_first
// ignore_for_file: public_member_api_docs

import 'package:flutter_movie/product/model/result_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_model.g.dart';

@JsonSerializable()
class MovieModel {
  int? page;
  List<Result>? results;
  int? totalPages;
  int? totalResults;
  MovieModel({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

class BaseResponseModel {
  MovieModel? movie;

  BaseResponseModel({this.movie});
}
