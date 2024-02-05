// ignore_for_file: unused_local_variable, public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_movie/feature/home/custom_list_view.dart';
import 'package:flutter_movie/feature/home/home_movies_widget.dart';
import 'package:flutter_movie/feature/home/view/view_model/home_view_model.dart';
import 'package:flutter_movie/feature/home/view/widget/home_app_bar.dart';
import 'package:flutter_movie/feature/home/view/widget/home_category_list.dart';
import 'package:flutter_movie/product/router/navigation_router.dart';
import 'package:flutter_movie/product/utility/constants/string_constant.dart';

class HomeView extends HomeViewModel {
  int _selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          HomeCategoryList(
            selectedCategoryIndex: _selectedCategoryIndex,
            onCategorySelected: (index) {
              setState(() {
                _selectedCategoryIndex = index;
              });
              NavigationRouter.navigateToCategoryPage(context, index);
            },
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: models.length,
              itemBuilder: (context, index) {
                final imageUrl =
                    StringConstants.imagePath + models[index].posterPath!;

                return CustomHomeListView(
                  customImageUrl: imageUrl,
                  customTextTitle: models[index].title!,
                  customTextOverview: models[index].overview!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToCategoryPage(int index) {
    Widget page;
    switch (index) {
      case 0:
        page =
            const MovieResults(); // Örneğin, Trend filmlerin listelendiği sayfa
      case 1:
        page =
            const MovieTopRatedMovies(); // Örneğin, En yüksek puanlı filmlerin listelendiği sayfa
      // case 2, case 3, vb. diğer sayfalar için ek durumlar
      default:
        page = const MovieResults(); // Varsayılan sayfa
    }

    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }

    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
