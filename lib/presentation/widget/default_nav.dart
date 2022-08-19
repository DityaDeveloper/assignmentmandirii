import 'package:flutter/material.dart';

import '../screen/login/login.dart';

class DefaultNav extends StatefulWidget {
  const DefaultNav({Key? key}) : super(key: key);

  @override
  State<DefaultNav> createState() => _DefaultNavState();
}

class _DefaultNavState extends State<DefaultNav> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (_) => MaterialPageRoute(
        builder: (ctx) => Scaffold(
          backgroundColor: const Color.fromARGB(134, 100, 100, 100),
          body: Stack(
            children: const [Positioned.fill(child: LoginScreen())],
          ),
        ),
      ),
    );
  }
}
