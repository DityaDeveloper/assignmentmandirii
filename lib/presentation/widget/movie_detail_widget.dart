import 'package:flutter/material.dart';
import 'package:mandiritestadityatmdb/application/app_color_constant.dart';

import 'package:mandiritestadityatmdb/domain/movie_discover_model/movie_discover_model.dart';
import 'package:mandiritestadityatmdb/presentation/screen/movie_info/movie_info.dart';

import '../screen/movie_trailer/movie_trailer.dart';

class MovieDetailWidget extends StatefulWidget {
  const MovieDetailWidget(
      {Key? key, required this.movie, required this.request})
      : super(key: key);
  final MovieModel movie;
  final String request;

  @override
  State<MovieDetailWidget> createState() => _MovieDetailWidgetState();
}

class _MovieDetailWidgetState extends State<MovieDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backgroundColour,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColour,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: Text(
            widget.movie.originalTitle,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  _buildBackDrop(),
                  Positioned(
                    top: 80,
                    left: 30,
                    child: Hero(
                      tag: widget.request.isEmpty
                          ? "${widget.movie.id}"
                          : "${widget.movie.id}${widget.request}",
                      child: _buildPoster(),
                    ),
                  ),
                ],
              ),
              MovieInfoDetailScreen(
                movie: widget.movie,
              ),

              // MovieInfo(id: widget.movie.id!),
              // SimilarMovies(id: widget.movie.id!),
              // Reviews(
              //   id: widget.movie.id!,
              //   request: "movie",
              // ),
            ],
          ),
        ),
        persistentFooterButtons: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.redAccent,
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) =>
                            MovieTrailerScreen(movieId: widget.movie.id),
                      ));
                    },
                    icon: const Icon(
                      Icons.play_circle_fill_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                    label: const Text(
                      'Watch Trailers',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              // Expanded(
              //   child: Container(
              //     color: AppColor.secondColor,
              //     child: TextButton.icon(
              //       onPressed: () {
              //         if (widget.hiveId == null) {
              //           HiveMovieModel newValue = HiveMovieModel(
              //             id: widget.movie.id!,
              //             rating: widget.movie.rating!,
              //             title: widget.movie.title!,
              //             backDrop: widget.movie.backDrop!,
              //             poster: widget.movie.poster!,
              //             overview: widget.movie.overview!,
              //           );
              //           _movieWatchLists.add(newValue);
              //           _showAlertDialog();
              //         }
              //         if (widget.hiveId != null) {
              //           _movieWatchLists.deleteAt(widget.hiveId!);
              //           Navigator.of(context).pop(true);
              //         }
              //       },
              //       icon: Icon(
              //         widget.hiveId == null
              //             ? Icons.list_alt_outlined
              //             : Icons.delete,
              //         size: 30,
              //         color: Colors.white,
              //       ),
              //       label: Text(
              //         widget.hiveId == null ? 'Add To Lists' : 'Delete This',
              //         style: const TextStyle(
              //           fontSize: 15,
              //           color: Colors.white,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ]);
  }

  Widget _buildPoster() {
    return Container(
      width: 120,
      height: 180,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
          image: NetworkImage(
            widget.movie.posterPath,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildBackDrop() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        image: DecorationImage(
            image: NetworkImage(
              widget.movie.backdropPath,
            ),
            fit: BoxFit.cover),
      ),
    );
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Added to List"),
          content: Text(
              "${widget.movie.originalTitle} successfully added to watch list"),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            )
          ],
        );
      },
    );
  }
}
