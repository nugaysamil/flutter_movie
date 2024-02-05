// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_movie/feature/home/home_view.dart';
import 'package:flutter_movie/feature/home/view/widget/home_top_rated_movies.dart';
import 'package:flutter_movie/feature/home/view/widget/home_upcoming_movies.dart';

class MovieResults extends StatefulWidget {
  const MovieResults({super.key});

  @override
  HomeView createState() => HomeView();
}

class MovieTopRatedMovies extends StatefulWidget {
  const MovieTopRatedMovies({super.key});

  @override
  HomeTopRatedMovies createState() => HomeTopRatedMovies();
}

class MovieUpComingWidget extends StatefulWidget {
  const MovieUpComingWidget({super.key});

  @override
  HomeUpComingMovies createState() => HomeUpComingMovies();
}
