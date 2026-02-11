import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigation_helper.dart';
import 'package:green_mart_app/core/utils/assets/app_images.dart';
import 'package:green_mart_app/core/utils/colors/app_colors.dart';
import 'package:green_mart_app/core/utils/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_svg_picture.dart';
import 'package:green_mart_app/core/widgets/main_button.dart';
import 'package:green_mart_app/features/auth/login_view.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              AppImages.welcome,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),

            Positioned(
              right: 0,
              left: 0,
              bottom: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: _buildWelcomColumn(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomColumn(BuildContext context) {
    return Column(
      children: [
        const CustomSvg(
          path: AppImages.carrotSvg,
          color: AppColors.backgroundColor,
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          'Welcome\nto our store',
          style: AppStyles.headline.copyWith(
            color: AppColors.backgroundColor,
            height: 1.2,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 12,
        ),

        Text(
          'Ger your groceries in as fast as one hour',
          style: AppStyles.caption1.copyWith(
            color: AppColors.lightGreyColor,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 32,
        ),
        MainButton(
          text: 'Get Started',
          onPressed: () {
            pushReplacement(context, const LoginView());
          },
        ),
      ],
    );
  }
}
