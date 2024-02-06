// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter_movie/ui/common/screen/movies/popular/popular_movies_screen.dart';
import 'package:flutter_movie/ui/common/screen/movies/top_rated/top_rated_movies_screen.dart';
import 'package:flutter_movie/ui/common/screen/movies/upcoming/upcoming_movies_screens.dart';

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
