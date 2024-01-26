// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_movie/product/package/custom_image/custom_network_image.dart';
import 'package:flutter_movie/product/utility/constants/string_constant.dart';
import 'package:flutter_movie/product/widget/padding/project_padding.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const ProjectPadding.allSmall(),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              const CustomNetworkImage(
                imageUrl: StringConstants.networkImageUrl,
                size: Size(100, 100),
                emptyWidget: Icon(Icons.image_not_supported),
                loadingWidget: CircularProgressIndicator(),
              ),
              const SizedBox(width: 10),
              SizedBox(
                child: Text('Öğe $index'),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
