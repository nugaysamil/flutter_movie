// ignore_for_file: public_member_api_docs, require_trailing_commas

import 'package:flutter/material.dart';
import 'package:flutter_movie/feature/home/view/widget/home_app_bar.dart';
import 'package:flutter_movie/product/init/application_initialize.dart';

Future<void> main() async {
  await ApplicationInitialize().make();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeAppBar());
  }
}
