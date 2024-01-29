// ignore_for_file: public_member_api_docs, must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_movie/product/init/config/index.dart';
import 'package:vexana/vexana.dart';

@immutable
// Product network manager
final class ProductNetworkManager extends NetworkManager<EmptyModel> {
  ProductNetworkManager.base()
      : super(
          options: BaseOptions(
            baseUrl: AppEnvironmentItems.baseUrl.value,
            queryParameters:  {
              'api_key': AppEnvironmentItems.apiKey.value,
            },
          ),
        );

  /// Handle Error
  void listenErrorStatus({required ValueChanged<int> onErrorStatus}) {
    interceptors.add(
      InterceptorsWrapper(
        onError: (e, handler) {
          onErrorStatus(e.response!.statusCode ?? HttpStatus.badRequest);
          return handler.next(e);
        },
      ),
    );
  }
}
