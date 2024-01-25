// ignore_for_file: require_trailing_commas, public_member_api_docs, eol_at_end_of_file

import 'package:envied/envied.dart';
import 'package:flutter_movie/product/init/config/app_configration.dart';

part 'prod_env.g.dart';

@Envied(
  obfuscate: true,
  path: 'assets/env/.prod.env',
)
class ProdEnv implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _ProdEnv._baseUrl;

  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _ProdEnv._apiKey;

  @override
  String get baseUrl => _baseUrl;

  @override
  String get apiKey => _apiKey;
}


