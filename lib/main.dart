// ignore_for_file: public_member_api_docs, require_trailing_commas

import 'package:flutter/material.dart';
import 'package:flutter_movie/feature/home/home_result.dart';
import 'package:flutter_movie/product/init/application_initialize.dart';
import 'package:flutter_movie/product/theme/custom_dark_theme.dart';
import 'package:flutter_movie/product/theme/custom_light_theme.dart';

Future<void> main() async {
  await ApplicationInitialize().make();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      themeMode: ThemeMode.dark,
      home: const MovieResults(),
    );
  }
}
