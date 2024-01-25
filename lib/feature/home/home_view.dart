// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_movie/feature/home/view/mixin/home_view_mixin.dart';
import 'package:flutter_movie/feature/home/view/widget/home_app_bar.dart';
import 'package:flutter_movie/feature/home/view/widget/home_list_view.dart';
import 'package:flutter_movie/product/theme/custom_color_scheme.dart';
import 'package:flutter_movie/product/utility/constants/string_constant.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              StringConstants.trendingMovies,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: CustomColorScheme.darkColorScheme.secondary,
                  ),
            ),
            
          ),
          const HomeListView(),
        ],
      ),
    );
  }
}
