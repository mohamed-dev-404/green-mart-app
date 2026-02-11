import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigation_helper.dart';
import 'package:green_mart_app/core/utils/assets/app_images.dart';
import 'package:green_mart_app/core/utils/colors/app_colors.dart';
import 'package:green_mart_app/core/widgets/custom_svg_picture.dart';
import 'package:green_mart_app/features/intro/on_boarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  CrossFadeState crossFadeState = CrossFadeState.showFirst;

  @override
  void initState() {
    super.initState();
    _startLogoFadeAnimation();
    _navigate();
  }

  Future<void> _startLogoFadeAnimation() async {
    await Future.delayed(
      const Duration(milliseconds: 250),
      () {
        setState(() {
          crossFadeState = CrossFadeState.showSecond;
        });
      },
    );
  }

  void _navigate() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        if (mounted) {
          pushReplacement(context, const OnBoardingView());
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: AnimatedCrossFade(
          crossFadeState: crossFadeState,
          duration: const Duration(seconds: 2),
          secondChild: const CustomSvg(
            path: AppImages.logoSvg,
            width: 250,
          ),
          firstChild: const SizedBox.shrink(),
        ),
      ),
    );
  }
}
