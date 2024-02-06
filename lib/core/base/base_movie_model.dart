// ignore_for_file: public_member_api_docs, inference_failure_on_function_invocation, avoid_dynamic_calls, deprecated_member_use, avoid_print

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie/product/enum/service_path_enum.dart';
import 'package:flutter_movie/product/model/result_model.dart';
import 'package:flutter_movie/product/service/manager/product_network_manager.dart';

abstract class BaseMovieModel<T extends StatefulWidget> extends State<T> {
  final Dio dio = ProjectNetworkManager.instance!.dio;

  List<Result> models = [];

  Future<void> fetchMovies(ServicePath servicePath) async {
    try {
      final response = await dio.get(
        servicePath.rawValue,
        queryParameters: {
          'api_key': 'a16c68727cb7d3d0e78b3f5ad76e4f34',
        },
      );

      if (response.statusCode == HttpStatus.ok) {
        final dataList = response.data['results'] as List;
        models = dataList
            .map((e) => Result.fromJson(e as Map<String, dynamic>))
            .toList();
      }

      setState(() {});
    } on DioError catch (e) {
      print('ERRORR $e');
    }
  }
}
