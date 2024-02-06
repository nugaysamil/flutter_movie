// ignore_for_file: public_member_api_docs, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_movie/ui/custom_list_view.dart';
import 'package:flutter_movie/ui/common/screen/home/widgets/home_category_list.dart';
import 'package:flutter_movie/product/model/result_model.dart';
import 'package:flutter_movie/product/utility/constants/string_constant.dart';

class MovieListWidget extends StatelessWidget {
  final List<Result> movies;
  final ValueChanged<int> onCategorySelected;
  final int selectedCategoryIndex;

  const MovieListWidget({
    Key? key,
    required this.movies,
    required this.onCategorySelected,
    required this.selectedCategoryIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
