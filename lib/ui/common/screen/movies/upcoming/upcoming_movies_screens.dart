import 'package:flutter/material.dart';
import 'package:flutter_movie/ui/custom_list_view.dart';
import 'package:flutter_movie/core/base/base_movie_model.dart';
import 'package:flutter_movie/ui/common/screen/home/widgets/home_app_bar.dart';
import 'package:flutter_movie/ui/common/screen/home/widgets/home_category_list.dart';
import 'package:flutter_movie/product/enum/service_path_enum.dart';
import 'package:flutter_movie/product/router/navigation_router.dart';
import 'package:flutter_movie/product/utility/constants/string_constant.dart';

class HomeUpComingMovies extends BaseMovieModel {
  final int _selectedCategoryIndex = 2;
  @override
  void initState() {
    super.initState();
    fetchMovies(ServicePath.UP_COMING_MOVIES);
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
}
