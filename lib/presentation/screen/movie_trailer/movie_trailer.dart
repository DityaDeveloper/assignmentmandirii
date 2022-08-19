import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mandiritestadityatmdb/data/provider.dart';
import 'package:mandiritestadityatmdb/domain/movie_trailer_model/movie_trailer_model.dart';
import 'package:mandiritestadityatmdb/presentation/widget/loading.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MovieTrailerScreen extends ConsumerStatefulWidget {
  const MovieTrailerScreen({Key? key, required this.movieId}) : super(key: key);
  final int movieId;

  @override
  ConsumerState<MovieTrailerScreen> createState() =>
      _MovieTrailerScreenScreenState();
}

class _MovieTrailerScreenScreenState extends ConsumerState<MovieTrailerScreen>
    with TickerProviderStateMixin {
  final ScrollController _controller = ScrollController();
  int oldLength = 0;
  final searchKey = TextEditingController();
  bool isSearchActived = false;
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    debugPrint("movie ID : ${widget.movieId}");
    ref.read(movieTrailerProvider.notifier).reqTrailerData(widget.movieId);

    _controller.addListener(() async {
      if (_controller.position.pixels >
          _controller.position.maxScrollExtent -
              MediaQuery.of(context).size.height) {
        ref.read(movieTrailerProvider.notifier);
      }
    });
  }

  @override
  void dispose() {
    if (_scrollController != null) _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLoadMoreError = ref.watch(movieDiscoverProvider).isLoadMoreError;
    final isLoadMoreDone = ref.watch(movieDiscoverProvider).isLoadMoreDone;
    final isLoading = ref.watch(movieDiscoverProvider).isLoading;
    final movieDiscover = ref.watch(movieTrailerSearchProvider.notifier).state;
    return Consumer(builder: (ctx, watch, child) {
      List<MovieTrailerModel> trailer = movieDiscover;
      if (movieDiscover.isEmpty) {
        if (isLoading == false) {
          return const Center(
            child: Text(
              'data not found',
              style: TextStyle(color: Colors.white),
            ),
          );
        }
        return const LoadingProgress(
          loadingColor: Colors.lightBlue,
        );
      }
      return Stack(
        children: <Widget>[
          Center(
            child: YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: trailer[1].videoKey.toString(),
                flags: const YoutubePlayerFlags(
                  hideControls: false,
                  autoPlay: true,
                ),
              ),
            ),
          ),
          //close button
          Positioned(
            top: 40,
            right: 20,
            child: IconButton(
              icon: const Icon(Icons.close_sharp),
              color: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ],
      );
    });
  }
}
