// ignore_for_file: public_member_api_docs, eol_at_end_of_file

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

@immutable

/// This class is used to initialize the application.
final class ApplicationInitialize {
  Future<void> make() async {
    await runZonedGuarded<Future<void>>(_initialize, (error, stack) {
      Logger().e(error.toString());
    });
  }

  Future<void> _initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await DeviceUtility.instance.initPackageInfo();

    FlutterError.onError = (details) {
      /// custom service or custom logger insert here
      Logger().e(details.exceptionAsString());
    };
  }
}
