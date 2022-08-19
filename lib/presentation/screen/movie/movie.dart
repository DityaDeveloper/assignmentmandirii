import 'package:flutter/material.dart';

import 'package:mandiritestadityatmdb/presentation/screen/movie_discover/movie_discover.dart';
import 'package:mandiritestadityatmdb/presentation/screen/movie_genre/movie_genre.dart';
import 'package:mandiritestadityatmdb/presentation/screen/movie_nowplaying/movie_nowplaying.dart';
import 'package:mandiritestadityatmdb/presentation/screen/movie_popular/movie_popular.dart';
import 'package:mandiritestadityatmdb/presentation/screen/movie_upcoming/movie_upcoming.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        MovieNowPlayingScreen(),
        MovieGenreScreen(),
        MovieDiscoverScreen(),
        MoviePopularScreen(),
        MovieUpcomingScreen(),
      ],
    );
  }
}
