import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mandiritestadityatmdb/data/provider.dart';
import 'package:mandiritestadityatmdb/presentation/widget/genre_widget.dart';
import 'package:mandiritestadityatmdb/presentation/widget/loading.dart';

class MovieGenreScreen extends ConsumerStatefulWidget {
  const MovieGenreScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MovieGenreScreen> createState() => _MovieGenreScreenState();
}

class _MovieGenreScreenState extends ConsumerState<MovieGenreScreen> {
  final ScrollController _controller = ScrollController();
  int oldLength = 0;
  final searchKey = TextEditingController();
  bool isSearchActived = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() async {
      if (_controller.position.pixels >
          _controller.position.maxScrollExtent -
              MediaQuery.of(context).size.height) {
        ref.read(movieGenreProvider.notifier).loadMorePost();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final isLoadMoreError = ref.watch(movieGenreProvider).isLoadMoreError;
    final isLoadMoreDone = ref.watch(movieGenreProvider).isLoadMoreDone;
    final isLoading = ref.watch(movieGenreProvider).isLoading;
    final movieGenre = ref.watch(movieGenreSearchProvider.notifier).state;
    return Consumer(
      builder: (ctx, watch, child) {
        // oldLength = movieGenre.length;
        if (movieGenre.isEmpty) {
          if (isLoading == false) {
            return const Center(
              child:
                  Text('data not found', style: TextStyle(color: Colors.white)),
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
              padding: const EdgeInsets.only(left: 10),
              child: GenreWidget(
                genre: movieGenre,
                text: "GENRE",
                request: "genre",
              ),
            ));
        ;
      },
    );
  }
}
