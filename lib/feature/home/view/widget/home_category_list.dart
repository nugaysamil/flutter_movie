// ignore_for_file:  sort_constructors_first, inference_failure_on_function_return_type, unused_field, eol_at_end_of_file
// ignore_for_file: unused_element, unused_local_variable, inference_failure_on_instance_creation, prefer_const_constructors, unnecessary_breaks, public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_movie/product/model/list/category_list_name.dart';

class HomeCategoryList extends StatefulWidget {
  final Function(int index) onCategorySelected;
  final int selectedCategoryIndex;

  const HomeCategoryList({
    required this.onCategorySelected,
    required this.selectedCategoryIndex,
    super.key,
  });

  @override
  State<HomeCategoryList> createState() => _HomeCategoryListState();
}

class _HomeCategoryListState extends State<HomeCategoryList> {
  int _currentSelectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _currentSelectedIndex = widget.selectedCategoryIndex;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.categories.length,
        itemBuilder: (context, index) {
          final isSelected = index == widget.selectedCategoryIndex;
          return Container(
            margin: EdgeInsets.only(
              left: index == 0 ? 16 : 0,
              right: 10,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4),
              color: isSelected ? Colors.grey : Colors.transparent,
            ),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _currentSelectedIndex = index;
                });
                widget.onCategorySelected(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Center(child: Text(Categories.categories[index])),
              ),
            ),
          );
        },
      ),
    );
  }
}

