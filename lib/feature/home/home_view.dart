// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_movie/feature/home/view/mixin/home_view_mixin.dart';
import 'package:flutter_movie/feature/home/view/widget/home_app_bar.dart';
import 'package:flutter_movie/feature/home/view/widget/home_category_list.dart';
import 'package:flutter_movie/feature/home/view/widget/home_list_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
      body: Column(
        
      
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeCategoryList(),
          HomeListView(),
        ],
      ),
    );
  }
}
