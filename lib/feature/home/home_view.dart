// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_movie/feature/home/custom_list_view.dart';
import 'package:flutter_movie/feature/home/view/view_model/home_view_model.dart';
import 'package:flutter_movie/feature/home/view/widget/home_app_bar.dart';
import 'package:flutter_movie/feature/home/view/widget/home_category_list.dart';
import 'package:flutter_movie/product/utility/constants/string_constant.dart';

class HomeView extends HomeViewModel {
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
          const HomeCategoryList(),
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
