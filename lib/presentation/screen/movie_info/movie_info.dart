import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mandiritestadityatmdb/application/app_label_constant.dart';
import 'package:mandiritestadityatmdb/data/provider.dart';
import 'package:mandiritestadityatmdb/domain/movie_detail_model/movie_detail_model.dart';
import 'package:mandiritestadityatmdb/domain/movie_discover_model/movie_discover_model.dart';
import 'package:mandiritestadityatmdb/presentation/widget/loading.dart';

class MovieInfoDetailScreen extends ConsumerStatefulWidget {
  const MovieInfoDetailScreen({Key? key, required this.movie})
      : super(key: key);
  final MovieModel movie;

  @override
  ConsumerState<MovieInfoDetailScreen> createState() =>
      _MovieInfoDetailScreenState();
}

class _MovieInfoDetailScreenState extends ConsumerState<MovieInfoDetailScreen>
    with TickerProviderStateMixin {
  final ScrollController _controller = ScrollController();
  int oldLength = 0;
  final searchKey = TextEditingController();
  bool isSearchActived = false;
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    ref.read(movieDetailProvider.notifier).request(widget.movie.id);
    // _controller.addListener(() async {
    //   if (_controller.position.pixels >
    //       _controller.position.maxScrollExtent -
    //           MediaQuery.of(context).size.height) {
    //     ref.read(movieNowPlayingProvider.notifier).loadMorePost();
    //   }
    // });
  }

  @override
  void dispose() {
    if (_scrollController != null) _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final isLoadMoreError = ref.watch(movieNowPlayingProvider).isLoadMoreError;
    //final isLoadMoreDone = ref.watch(movieNowPlayingProvider).isLoadMoreDone;
    //final isLoading = ref.watch(movieNowPlayingProvider).isLoading;
    final movieDiscover = ref.watch(movieDetailProvider.notifier).state;
    MovieDetailModel a;
    return Consumer(
      builder: (ctx, watch, child) {
        if (movieDiscover == null) {
          // if (isLoading == false) {
          //   return const Center(
          //     child: Text('data not found'),
          //   );
          // }
          // return const LoadingProgress(
          //   loadingColor: Colors.lightBlue,
          // );
        }
        return RefreshIndicator(
            onRefresh: () {
              return ref.read(movieNowPlayingProvider.notifier).refresh();
            },
            child: Container(
              height: 290,
              padding: const EdgeInsets.only(left: 10),
              child: Text(movieDiscover.toString()),
              // child: NowPlayingWidget(
              //   movie: movieDiscover,
              // ),
            ));
      },
    );
  }
}
