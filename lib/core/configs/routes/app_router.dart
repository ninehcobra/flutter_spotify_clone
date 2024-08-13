import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/core/configs/constants/router_constant.dart';
import 'package:flutter_spotify_clone/presentation/choose_mode/pages/choose_mode_page.dart';
import 'package:flutter_spotify_clone/presentation/intro/pages/intro_page.dart';
import 'package:flutter_spotify_clone/presentation/plash/pages/plash_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterConstant.plash:
        return MaterialPageRoute(builder: (_) => const PlashPage());
      case RouterConstant.intro:
        return MaterialPageRoute(builder: (_) => const IntroPage());
      case RouterConstant.chooseMode:
        return MaterialPageRoute(builder: (_) => const ChooseModePage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
