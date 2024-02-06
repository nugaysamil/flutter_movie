// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_movie/ui/common/screen/movie_details/movie_details_content.dart';
import 'package:flutter_movie/product/widget/button/details_back_button.dart';
import 'package:flutter_movie/product/model/result_model.dart';
import 'package:google_fonts/google_fonts.dart';

class MoviesDetailsScreen extends StatefulWidget {
  const MoviesDetailsScreen({required this.result, super.key});
  final Result result;

  @override
  State<MoviesDetailsScreen> createState() => _MoviesDetailsScreenState();
}

class _MoviesDetailsScreenState extends State<MoviesDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            leading: const DetailsBackButton(),
            backgroundColor: Colors.transparent,
            expandedHeight: 500,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.result.title!,
                style: GoogleFonts.belleza(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              background: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Image.network(
                  'https://image.tmdb.org/t/p/w500${widget.result.backdropPath}',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          MovieDetailsContent(
            result: widget.result,
          ),
        ],
      ),
    );
  }
}
