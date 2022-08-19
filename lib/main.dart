// author is ditya developer
import 'dart:async';
import 'dart:developer' as developer;

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'presentation/screen/movie_genre/movie_genre.dart';
import 'presentation/widget/connection/lost_connection.dart';
import 'presentation/widget/default_nav.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ConnectivityResult connectionStatus = ConnectivityResult.none;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    super.initState();
    initConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      developer.log('Couldn\'t check connectivity status', error: e);
      return;
    }
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    setState(() {
      connectionStatus = result;
      // uncomment if you want show console
      // debugPrint("$connectionStatus");
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
          title: 'Mandiri Test Aditya TMDB',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          debugShowCheckedModeBanner: false,
          // home: const DefaultNav()
          // connection checker
          builder: (context, child) {
            return FutureBuilder<void>(
              future: initConnectivity(),
              builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  switch (connectionStatus) {
                    case ConnectivityResult.none:
                      return const ConnectionLostScreen();
                    // change the screen for custom
                    case ConnectivityResult.mobile:
                      return const DefaultNav();
                    case ConnectivityResult.bluetooth:
                      return const DefaultNav();
                    case ConnectivityResult.wifi:
                      return const DefaultNav();
                    case ConnectivityResult.ethernet:
                      return const DefaultNav();
                  }
                }
              },
            );
          });
    });
  }
}
