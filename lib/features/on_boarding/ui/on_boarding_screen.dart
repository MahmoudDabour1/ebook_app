import 'dart:async';

import 'package:ebook_app/core/helpers/extensions.dart';
import 'package:ebook_app/core/helpers/spacing.dart';
import 'package:ebook_app/core/theming/colors.dart';
import 'package:ebook_app/core/theming/logic/app_theme_cubit.dart';
import 'package:ebook_app/core/theming/logic/app_theme_state.dart';
import 'package:ebook_app/core/theming/styles.dart';
import 'package:ebook_app/features/on_boarding/ui/widgets/custom_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/app_constants.dart';
import '../../../core/routing/routes.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int index = 0;
  bool _isOut = false;

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              child: AnimatedScale(
                scale: _isOut ? 0 : 1,
                duration: Duration(
                  milliseconds: 200,
                ),
                child: Image.asset(
                  AppConstants.images[index],
                ),
              ),
            ),
            verticalSpace(24),
            Expanded(
              child: Stack(
                children: [
                  AnimatedPositioned(
                    left: _isOut
                        ? MediaQuery.of(context).size.width + 100
                        : MediaQuery.of(context).size.width * 0.25,
                    duration: Duration(milliseconds: 200),
                    child: Text(
                      textAlign: TextAlign.center,
                      AppConstants.titles[index],
                      style: AppTextStyles.font24DarkBlueBold.copyWith(
                        color:
                            isDarkTheme ? Colors.white : ColorsManager.darkBlue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  AnimatedPositioned(
                    right: _isOut ? MediaQuery.of(context).size.width + 100 : 0,
                    duration: Duration(milliseconds: 200),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.w, vertical: 10.h),
                        child: Text(
                          textAlign: TextAlign.center,
                          AppConstants.descriptions[index],
                          style: AppTextStyles.font14DarkGrayRegular,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIndicator(active: index == 0),
                SizedBox(width: 5),
                CustomIndicator(active: index == 1),
                SizedBox(width: 5),
                CustomIndicator(active: index == 2),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(30.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Text(
                      index == 2 ? "Register" : "Skip",
                      style: AppTextStyles.font18DarkBlueBold.copyWith(
                        color: isDarkTheme
                            ? ColorsManager.white
                            : ColorsManager.darkBlue,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isOut = true;
                      });
                      Timer(Duration(milliseconds: 210), () {
                        setState(() {
                          if (index < 2) {
                            index++;
                            _isOut = false;
                          }
                        });
                      });
                      if (index == 2) {
                        context.pushNamed(Routes.bottomNavBarWidget);
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.all(15.r),
                      decoration: BoxDecoration(
                        color:
                            isDarkTheme ? Colors.white : ColorsManager.darkBlue,
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Text(
                        index == 2 ? "Finish" : "Next",
                        style: AppTextStyles.font18DarkBlueBold.copyWith(
                          color: isDarkTheme
                              ? ColorsManager.darkBlue
                              : ColorsManager.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
