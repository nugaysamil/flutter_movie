// ignore_for_file:  sort_constructors_first
// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_movie/product/utility/constants/string_constant.dart';

class HomeCategoryList extends StatefulWidget {
  const HomeCategoryList({
    super.key,
  });

  @override
  State<HomeCategoryList> createState() => _HomeCategoryListState();
}

class _HomeCategoryListState extends State<HomeCategoryList> {
  final List<String> categories = [
    StringConstants.trendingMovies,
    StringConstants.trendingMovies,
    StringConstants.trendingMovies,
    StringConstants.trendingMovies,
    StringConstants.trendingMovies,
    StringConstants.trendingMovies,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
              left: index == 0 ? 16 : 0,
              right: 10,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: GestureDetector(
              onTap: () {},
              child: Center(
                child: Text(
                  categories[index],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
