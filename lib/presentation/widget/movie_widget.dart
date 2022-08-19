import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mandiritestadityatmdb/application/app_color_constant.dart';
import 'package:mandiritestadityatmdb/domain/movie_discover_model/movie_discover_model.dart';

import 'movie_detail_widget.dart';

class MoviesWidget extends StatefulWidget {
  const MoviesWidget(
      {Key? key,
      required this.text,
      required this.request,
      required this.movie})
      : super(key: key);
  final String text;
  final String request;
  final List<MovieModel> movie;

  @override
  State<MoviesWidget> createState() => _MoviesWidgetState();
}

class _MoviesWidgetState extends State<MoviesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Text(
            "${widget.text} MOVIES",
            style: const TextStyle(
              color: AppColor.textColor,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        _buildMoviesByGenreWidget(widget.movie)
      ],
    );
  }

  Widget _buildMoviesByGenreWidget(List<MovieModel> movie) {
    return Container(
      height: 270,
      padding: const EdgeInsets.only(left: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: movie.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 10,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => MovieDetailWidget(
                          movie: movie[index],
                          request: widget.request,
                        )));
              },
              child: Column(
                children: <Widget>[
                  movie[index].overview.isEmpty
                      ? Container(
                          width: 120,
                          height: 180,
                          decoration: const BoxDecoration(
                            color: AppColor.secondColor,
                            borderRadius: BorderRadius.all(Radius.circular(2)),
                            shape: BoxShape.rectangle,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.videocam_off,
                              color: Colors.white,
                              size: 50,
                            ),
                          ),
                        )
                      : Hero(
                          tag: movie[index].id.toString() + widget.request,
                          child: Container(
                            width: 120,
                            height: 180,
                            decoration: BoxDecoration(
                              color: AppColor.secondColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(2)),
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image: NetworkImage(movie[index].backdropPath),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(
                      movie[index].originalTitle,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        height: 1.4,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        movie[index].voteCount.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      RatingBar.builder(
                        itemSize: 8,
                        initialRating: movie[index].voteAverageInt / 2,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                        itemBuilder: (context, _) {
                          return const Icon(
                            Icons.star,
                            color: AppColor.secondColor,
                          );
                        },
                        onRatingUpdate: (rating) {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
