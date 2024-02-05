// ignore_for_file: public_member_api_docs, constant_identifier_names, inference_failure_on_function_invocation, unused_local_variable, avoid_dynamic_calls, deprecated_member_use, type_annotate_public_apis

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie/feature/home/home_result.dart';
import 'package:flutter_movie/product/enum/service_path_enum.dart';
import 'package:flutter_movie/product/model/result_model.dart';
import 'package:flutter_movie/product/service/manager/product_network_manager.dart';

abstract class HomeTopMoviesViewModel extends State<MovieTopRatedMovies> {
  final Dio dio = ProjectNetworkManager.instance!.dio;

  List<Result> models = [];

  @override
  // ignore: always_declare_return_types
  void initState() {
    super.initState();
    fetchTopRatedData();
  }

  Future<void> fetchTopRatedData() async {
    try {
      final response = await dio.get(
        ServicePath.TOP_RATED_MOVIES.rawValue,
        queryParameters: {
          'api_key': 'a16c68727cb7d3d0e78b3f5ad76e4f34',
        },
      );

      if (response.statusCode == HttpStatus.ok) {
        final dataList = response.data['results'] as List;

        models.addAll(
          dataList
              .map((e) => Result.fromJson(e as Map<String, dynamic>))
              .toList(),
        );
      }

      setState(() {});
    } on DioError catch (e) {
      print('ERROR $e');
    }
  }
}
