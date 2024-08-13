import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/core/configs/constants/router_constant.dart';
import 'package:flutter_spotify_clone/presentation/auth/pages/signin.dart';
import 'package:flutter_spotify_clone/presentation/auth/pages/signup.dart';
import 'package:flutter_spotify_clone/presentation/auth/pages/signup_or_signin.dart';
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
      case RouterConstant.signin:
        return MaterialPageRoute(builder: (_) => SigninPage());
      case RouterConstant.signup:
        return MaterialPageRoute(builder: (_) => SignupPage());
      case RouterConstant.signupOrSignin:
        return MaterialPageRoute(builder: (_) => const SignupOrSigninPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
