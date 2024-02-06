// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_movie/ui/custom_list_view.dart';
import 'package:flutter_movie/core/base/base_movie_model.dart';
import 'package:flutter_movie/ui/common/screen/home/widgets/home_app_bar.dart';
import 'package:flutter_movie/ui/common/screen/home/widgets/home_category_list.dart';
import 'package:flutter_movie/product/enum/service_path_enum.dart';
import 'package:flutter_movie/product/router/navigation_router.dart';
import 'package:flutter_movie/product/utility/constants/string_constant.dart';

class HomeTopRatedMovies extends BaseMovieModel {
  int _selectedCategoryIndex = 1;

  @override
  void initState() {
    fetchMovies(ServicePath.TOP_RATED_MOVIES);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Column(
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
          const SizedBox(
            height: 10,
          ),
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
}
