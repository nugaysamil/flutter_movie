// ignore_for_file: public_member_api_docs

import 'package:flutter/foundation.dart';
import 'package:flutter_movie/product/init/config/app_configration.dart';
import 'package:flutter_movie/product/init/config/dev_env.dart';
import 'package:flutter_movie/product/init/config/prod_env.dart';

/// This class is used to provide the environment variables to the app.
final class AppEnvironment {
  // Setup application environment
  AppEnvironment.setup({required AppConfiguration config}) {
    _config = config;
  }

  /// General environment for the application.
  AppEnvironment.general() {
    if (kDebugMode) {
      _config = DevEnv();
    } else {
      _config = ProdEnv();
    }
  }
  static late final AppConfiguration _config;
}

/// Get application environment items
enum AppEnvironmentItems {
  baseUrl,
  apiKey;

  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._config.baseUrl;
        case AppEnvironmentItems.apiKey:
          return AppEnvironment._config.apiKey;
      }
    } catch (e) {
      throw Exception('AppEnvironment is not initialized: $e');
    }
  }
}
