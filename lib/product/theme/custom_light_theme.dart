// ignore_for_file: public_member_api_docs, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:flutter_movie/product/theme/custom_color_scheme.dart';
import 'package:flutter_movie/product/theme/custom_theme.dart';
import 'package:google_fonts/google_fonts.dart';

final class CustomLightTheme extends CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        colorScheme: CustomColorScheme.lightColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
        fontFamily: GoogleFonts.roboto().fontFamily,
      );

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData();
}
