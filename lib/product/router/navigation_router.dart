// ignore_for_file: public_member_api_docs, inference_failure_on_instance_creation, unnecessary_breaks

import 'package:flutter/material.dart';
import 'package:flutter_movie/feature/home/home_result.dart';

class NavigationRouter {
  static void navigateToCategoryPage(BuildContext context, int index) {
    Widget page;
    switch (index) {
      case 0:
        page = const MovieResults();
        break;
      case 1:
        page = const MovieTopRatedMovies();
        break;

      case 2:
        page = const MovieUpComingWidget();
        break;

      default:
        page = const MovieResults();
        break;
    }

    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
