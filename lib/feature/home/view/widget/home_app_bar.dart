// ignore_for_file: unused_element, public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_movie/product/theme/index.dart';
import 'package:flutter_movie/product/utility/constants/string_constant.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        StringConstants.flutterMovie,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: CustomColorScheme.darkColorScheme.scrim,
            ),
      ),
      backgroundColor: CustomColorScheme.darkColorScheme.onBackground,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
