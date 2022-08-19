import 'package:flutter/material.dart';
import 'package:mandiritestadityatmdb/application/app_color_constant.dart';
import 'package:mandiritestadityatmdb/presentation/screen/movie/movie.dart';
import 'package:mandiritestadityatmdb/presentation/screen/movie_discover/movie_discover.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController();
    void onTapIcon(int index) {
      _controller.animateToPage(index,
          duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
    }

    return Scaffold(
      backgroundColor: AppColor.backgroundColour,
      // appBar: _currentIndex != 2
      //     ? AppBar(
      //         centerTitle: true,
      //         title: _buildTitle(_currentIndex),
      //       )
      //     : null,
      body: PageView(
        controller: _controller,
        children: const <Widget>[
          MovieScreen(),
          //TVsScreen(),
          //WatchLists(),
        ],
        onPageChanged: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.primaryColor,
        selectedItemColor: AppColor.secondColor,
        unselectedItemColor: AppColor.textColor,
        onTap: onTapIcon,
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Movies"),
          BottomNavigationBarItem(icon: Icon(Icons.tv), label: "TVs"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Watch Lists"),
        ],
      ),
    );
  }

  _buildTitle(int _index) {
    switch (_index) {
      case 0:
        return const Text('Movie Shows');
      case 1:
        return const Text('TV Shows');
      default:
        return null;
    }
  }
}
