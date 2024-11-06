import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_constants.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/logic/app_theme_cubit.dart';
import '../../../../core/theming/logic/app_theme_state.dart';
import '../../../../core/theming/styles.dart';

class OnboardingScrollItems extends StatelessWidget {
  final int index;
  final bool isOut;
  const OnboardingScrollItems({super.key, required this.index, required this.isOut});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
          child: AnimatedScale(
            scale: isOut ? 0 : 1,
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
                left: isOut
                    ? MediaQuery.of(context).size.width + 100
                    : MediaQuery.of(context).size.width * 0.25,
                duration: Duration(milliseconds: 200),
                child: Text(
                  textAlign: TextAlign.center,
                  AppConstants.titles[index],
                  style:
                  AppTextStyles.font24DarkBlueBold.copyWith(
                    color: isDarkTheme
                        ? Colors.white
                        : ColorsManager.darkBlue,
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
                right: isOut
                    ? MediaQuery.of(context).size.width + 100
                    : 0,
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
      ],
    );
  }
}
