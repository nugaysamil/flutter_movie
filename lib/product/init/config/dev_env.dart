// ignore_for_file: require_trailing_commas, public_member_api_docs, unused_field

import 'package:envied/envied.dart';
import 'package:flutter_movie/product/init/config/app_configration.dart';

part 'dev_env.g.dart';

@Envied(obfuscate: true, path: 'assets/env/.dev.env')
 class DevEnv implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _DevEnv._baseUrl;

  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _DevEnv._apiKey;

  @override
  String get baseUrl => _baseUrl;

  @override
  String get apiKey => _apiKey;
}
