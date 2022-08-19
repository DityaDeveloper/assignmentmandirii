import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mandiritestadityatmdb/application/app_label_constant.dart';
import 'package:mandiritestadityatmdb/data/provider.dart';
import 'package:mandiritestadityatmdb/presentation/widget/loading.dart';
import 'package:mandiritestadityatmdb/presentation/widget/movie_widget.dart';
import 'package:mandiritestadityatmdb/presentation/widget/nowplaying_widget.dart';

class MovieNowPlayingScreen extends ConsumerStatefulWidget {
  const MovieNowPlayingScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MovieNowPlayingScreen> createState() =>
      _MovieNowPlayingScreenState();
}

class _MovieNowPlayingScreenState extends ConsumerState<MovieNowPlayingScreen>
    with TickerProviderStateMixin {
  final ScrollController _controller = ScrollController();
  int oldLength = 0;
  final searchKey = TextEditingController();
  bool isSearchActived = false;
  ScrollController? _scrollController;

  String title = AppLabel.kHomeScreenTitleText;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() async {
      if (_controller.position.pixels >
          _controller.position.maxScrollExtent -
              MediaQuery.of(context).size.height) {
        ref.read(movieNowPlayingProvider.notifier).loadMorePost();
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
    final isLoadMoreError = ref.watch(movieNowPlayingProvider).isLoadMoreError;
    final isLoadMoreDone = ref.watch(movieNowPlayingProvider).isLoadMoreDone;
    final isLoading = ref.watch(movieNowPlayingProvider).isLoading;
    final movieDiscover =
        ref.watch(movieNowPlayingSearchProvider.notifier).state;
    return Consumer(
      builder: (ctx, watch, child) {
        if (movieDiscover.isEmpty) {
          if (isLoading == false) {
            return const Center(
              child: Text('data not found'),
            );
          }
          return const LoadingProgress(
            loadingColor: Colors.lightBlue,
          );
        }
        return RefreshIndicator(
            onRefresh: () {
              return ref.read(movieNowPlayingProvider.notifier).refresh();
            },
            child: Container(
              height: 290,
              padding: const EdgeInsets.only(left: 10),
              child: NowPlayingWidget(
                movie: movieDiscover,
              ),
            ));
      },
    );
  }
}
