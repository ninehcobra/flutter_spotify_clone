import 'package:flutter/material.dart';
import 'package:flutter_spotify_clone/core/configs/assets/app_vector.dart';
import 'package:flutter_spotify_clone/core/configs/theme/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlashPage extends StatefulWidget {
  const PlashPage({super.key});

  @override
  State<PlashPage> createState() => _PlashPageState();
}

class _PlashPageState extends State<PlashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this as TickerProvider,
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            isLoading = false;
          });
        }
        if (status == AnimationStatus.completed) {
          Navigator.of(context)
              .pushReplacementNamed('/intro'); // Navigate to intro screen
        }
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppVector.logo),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    return LinearProgressIndicator(
                      value: _animation.value,
                      backgroundColor: AppColors.primary.withOpacity(0.3),
                      valueColor:
                          AlwaysStoppedAnimation<Color>(AppColors.primary),
                    );
                  },
                ),
              ),
              if (isLoading)
                Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: const Text(
                      "Waiting for loading data.....",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ))
            ],
          ),
        ),
      ),
    );
  }
}
