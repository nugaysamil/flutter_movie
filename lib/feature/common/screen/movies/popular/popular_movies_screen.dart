// ignore_for_file: unused_local_variable, public_member_api_docs, inference_failure_on_instance_creation

import 'package:flutter/material.dart';
import 'package:flutter_movie/core/base/base_movie_model.dart';
import 'package:flutter_movie/product/enum/service_path_enum.dart';
import 'package:flutter_movie/product/router/navigation_router.dart';
import 'package:flutter_movie/product/utility/constants/string_constant.dart';
import 'package:flutter_movie/feature/common/screen/home/widgets/home_app_bar.dart';
import 'package:flutter_movie/feature/common/screen/home/widgets/home_category_list.dart';
import 'package:flutter_movie/feature/common/screen/movie_details/home_details_screen.dart';
import 'package:flutter_movie/feature/custom_list_view.dart';

class HomeView extends BaseMovieModel {
  int _selectedCategoryIndex = 0;

  @override
  void initState() {
    fetchMovies(ServicePath.POPULAR_MOVIES);
    super.initState();
  }

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

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MoviesDetailsScreen(
                          result: models[index],
                        ),
                      ),
                    );
                  },
                  child: CustomHomeListView(
                    customImageUrl: imageUrl,
                    customTextTitle: models[index].title!,
                    customTextOverview: models[index].overview!,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
