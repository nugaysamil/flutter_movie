import 'package:flutter/material.dart';
import 'package:flutter_movie/product/model/list/category_list_name.dart';

class HomeCategoryList extends StatefulWidget {
  const HomeCategoryList({
    super.key,
  });

  @override
  State<HomeCategoryList> createState() => _HomeCategoryListState();
}

class _HomeCategoryListState extends State<HomeCategoryList> {
  int _selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.categories.length,
        itemBuilder: (context, index) {
          final isSelected = index == _selectedCategoryIndex;
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
              color: isSelected ? Colors.grey : Colors.transparent,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedCategoryIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: Text(
                    Categories.categories[index],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
