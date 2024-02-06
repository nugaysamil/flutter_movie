// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_movie/product/model/result_model.dart';
import 'package:flutter_movie/product/utility/constants/string_constant.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieDetailsContent extends StatelessWidget {
  const MovieDetailsContent({required this.result, super.key});
  final Result result;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text(
              StringConstants.overview,
              style: GoogleFonts.openSans(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              result.overview!,
              style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    StringConstants.releaseDate + result.releaseDate!,
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Text(
                        StringConstants.rating,
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        '${result.voteAverage!.toStringAsFixed(1)}/10',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
