// ignore_for_file: public_member_api_docs, sort_constructors_first, always_put_required_named_parameters_first
import 'package:flutter/material.dart';
import 'package:flutter_movie/product/package/custom_image/custom_network_image.dart';

class CustomHomeListView extends StatelessWidget {
  final String customImageUrl;
  final String customTextTitle;
  final String customTextOverview;
  const CustomHomeListView({
    super.key,
    required this.customImageUrl,
    required this.customTextTitle,
    required this.customTextOverview,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Row(
        children: [
          CustomNetworkImage(
            imageUrl: customImageUrl,
            size: const Size(150, 150),
            emptyWidget: const Icon(Icons.image_not_supported),
            loadingWidget: const CircularProgressIndicator(),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  customTextTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  customTextOverview,
                  maxLines: 3,
                  overflow: TextOverflow.clip,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
