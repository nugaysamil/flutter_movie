/* // ignore_for_file: public_member_api_docs, eol_at_end_of_file

import 'package:flutter/material.dart';

class CustomDetailsAppBar extends StatefulWidget
    implements PreferredSizeWidget {
  const CustomDetailsAppBar({super.key});

  @override
  State<CustomDetailsAppBar> createState() => _CustomDetailsAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomDetailsAppBarState extends State<CustomDetailsAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            leading: Container(
              height: 70,
              width: 70,
              margin: const EdgeInsets.only(left: 7, top: 7),
              decoration: const BoxDecoration(color: Colors.amber),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.black,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            expandedHeight: 500,
            floating: true,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('aa'),
            ),
          ),
        ],
      ),
    );
  }
}
 */