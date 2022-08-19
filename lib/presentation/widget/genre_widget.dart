import 'package:flutter/material.dart';
import 'package:mandiritestadityatmdb/application/app_color_constant.dart';
import 'package:mandiritestadityatmdb/domain/movie_genre_model/movie_genre_model.dart';

class GenreWidget extends StatefulWidget {
  const GenreWidget(
      {Key? key,
      required this.text,
      required this.request,
      required this.genre})
      : super(key: key);
  final String text;
  final String request;
  final List<MovieGenreModel> genre;

  @override
  State<GenreWidget> createState() => _GenreWidgetState();
}

class _GenreWidgetState extends State<GenreWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Text(
            widget.text,
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
        _buildMoviesByGenreWidget(widget.genre)
      ],
    );
  }

  Widget _buildMoviesByGenreWidget(List<MovieGenreModel> genre) {
    return Container(
      height: 70,
      padding: const EdgeInsets.only(left: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genre.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 10,
            ),
            child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (_) => MoviesDetailsScreen(
                  //           movie: movies[index],
                  //           request: widget.request,
                  //         )));
                },
                child: SizedBox(
                  width: 100,
                  child: Card(
                    color: const Color.fromARGB(255, 38, 84, 163),
                    child: Padding(
                      padding: const EdgeInsets.all(.0),
                      child: Center(
                        child: Text(
                          genre[index].name,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            height: 1.4,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
          );
        },
      ),
    );
  }
}
