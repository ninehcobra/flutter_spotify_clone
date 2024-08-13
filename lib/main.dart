import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/core/configs/constants/router_constant.dart';
import 'package:flutter_spotify_clone/core/configs/routes/app_router.dart';
import 'package:flutter_spotify_clone/core/configs/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: RouterConstant.plash,
    );
  }
}
