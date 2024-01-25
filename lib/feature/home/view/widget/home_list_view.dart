// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_movie/product/package/custom_image/custom_network_image.dart';
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
                imageUrl:
                    'https://media.istockphoto.com/id/1402273372/photo/asian-woman-taking-selfie-with-girlfriend-in-park.jpg?s=612x612&w=0&k=20&c=JAPEEGpCjNY3qkoTCA9s4CaRQEZk6TTc_KKwayALTbk=',
                size: Size(100, 100),
                emptyWidget: Icon(Icons.image_not_supported),
                loadingWidget: CircularProgressIndicator(),
              ),
              Container(
                height: 100,
                color: Colors.red,
                child: Center(
                  child: Text('Öğe $index'),
                ),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
