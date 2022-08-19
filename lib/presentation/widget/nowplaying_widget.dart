import 'package:flutter/material.dart';
import 'package:mandiritestadityatmdb/application/app_color_constant.dart';
import 'package:mandiritestadityatmdb/domain/movie_discover_model/movie_discover_model.dart';
import 'package:page_indicator/page_indicator.dart';

class NowPlayingWidget extends StatefulWidget {
  const NowPlayingWidget({Key? key, required this.movie}) : super(key: key);

  final List<MovieModel> movie;

  @override
  State<NowPlayingWidget> createState() => _NowPlayingWidgetState();
}

class _NowPlayingWidgetState extends State<NowPlayingWidget> {
  @override
  Widget build(BuildContext context) {
    return _buildMovies(widget.movie);
  }

  Widget _buildMovies(List<MovieModel> movie) {
    return SizedBox(
      height: 220,
      child: PageIndicatorContainer(
        align: IndicatorAlign.bottom,
        indicatorSpace: 8,
        padding: const EdgeInsets.all(5),
        indicatorColor: AppColor.textColor,
        indicatorSelectorColor: AppColor.secondColor,
        length: movie.take(5).length,
        shape: IndicatorShape.circle(size: 10),
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.take(5).length,
          itemBuilder: (context, index) {
            return Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 220,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: NetworkImage(movie[index].backdropPath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      AppColor.primaryColor.withOpacity(1),
                      AppColor.primaryColor.withOpacity(0),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: const [0.0, 0.9],
                  )),
                ),
                Positioned(
                  bottom: 30.0,
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          movie[index].originalTitle,
                          style: const TextStyle(
                            height: 1.5,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
