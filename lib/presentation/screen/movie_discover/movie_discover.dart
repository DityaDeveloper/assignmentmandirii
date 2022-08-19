import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mandiritestadityatmdb/data/provider.dart';
import 'package:mandiritestadityatmdb/presentation/widget/loading.dart';
import 'package:mandiritestadityatmdb/presentation/widget/movie_widget.dart';

import '../../../application/app_label_constant.dart';

class MovieDiscoverScreen extends ConsumerStatefulWidget {
  const MovieDiscoverScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MovieDiscoverScreen> createState() =>
      _MovieDiscoverScreenState();
}

class _MovieDiscoverScreenState extends ConsumerState<MovieDiscoverScreen>
    with TickerProviderStateMixin {
  final ScrollController _controller = ScrollController();
  int oldLength = 0;
  final searchKey = TextEditingController();
  bool isSearchActived = false;
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() async {
      if (_controller.position.pixels >
          _controller.position.maxScrollExtent -
              MediaQuery.of(context).size.height) {
        ref.read(movieDiscoverProvider.notifier).loadMorePost();
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
    final movieDiscover = ref.watch(movieDiscoverSearchProvider.notifier).state;
    return Consumer(builder: (ctx, watch, child) {
      oldLength = movieDiscover.length;

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
            return ref.read(movieDiscoverProvider.notifier).refresh();
          },
          child: MoviesWidget(
              text: "DISCOVER", request: "discover", movie: movieDiscover));
    });
  }
}
