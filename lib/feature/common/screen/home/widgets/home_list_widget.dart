// ignore_for_file: public_member_api_docs, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_movie/product/enum/service_path_enum.dart';
import 'package:flutter_movie/product/model/result_model.dart';
import 'package:flutter_movie/product/utility/constants/string_constant.dart';
import 'package:flutter_movie/feature/common/screen/home/widgets/home_app_bar.dart';
import 'package:flutter_movie/feature/common/screen/home/widgets/home_category_list.dart';
import 'package:flutter_movie/feature/custom_list_view.dart';

class MovieListWidget extends StatelessWidget {

  const MovieListWidget({
    required this.movies,
    required this.onCategorySelected,
    required this.selectedCategoryIndex,
    required ServicePath servicePath,
    Key? key,
  }) : super(key: key);
  final List<Result> movies;
  final ValueChanged<int> onCategorySelected;
  final int selectedCategoryIndex;


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
              itemCount: movies.length,
              itemBuilder: (context, index) {
                final imageUrl =
                    StringConstants.imagePath + movies[index].posterPath!;
                return CustomHomeListView(
                  customImageUrl: imageUrl,
                  customTextTitle: movies[index].title!,
                  customTextOverview: movies[index].overview!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
