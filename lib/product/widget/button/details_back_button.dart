// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

class DetailsBackButton extends StatelessWidget {
  const DetailsBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      margin: const EdgeInsets.only(left: 16, top: 16),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 44, 39, 39),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
