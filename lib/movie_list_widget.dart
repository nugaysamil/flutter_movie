// ignore_for_file: public_member_api_docs, use_super_parameters, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_movie/core/base/base_movie_model.dart';
import 'package:flutter_movie/product/enum/service_path_enum.dart';
import 'package:flutter_movie/product/utility/constants/string_constant.dart';
import 'package:flutter_movie/feature/common/screen/home/widgets/home_app_bar.dart';
import 'package:flutter_movie/feature/common/screen/home/widgets/home_category_list.dart';
import 'package:flutter_movie/feature/custom_list_view.dart';

class MovieListWidget extends StatelessWidget {
  final BaseMovieModel model;
  final int selectedCategoryIndex;
  final Function(int) onCategorySelected;
  final ServicePath servicePath;

  const MovieListWidget({
    super.key,
    required this.model,
    required this.selectedCategoryIndex,
    required this.onCategorySelected,
    required this.servicePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          HomeCategoryList(
            selectedCategoryIndex: selectedCategoryIndex,
            onCategorySelected: onCategorySelected,
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: model.models.length,
              itemBuilder: (context, index) {
                final imageUrl =
                    StringConstants.imagePath + model.models[index].posterPath!;
                return CustomHomeListView(
                  customImageUrl: imageUrl,
                  customTextTitle: model.models[index].title!,
                  customTextOverview: model.models[index].overview!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
