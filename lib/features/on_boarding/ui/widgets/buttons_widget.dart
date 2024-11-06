import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/logic/app_theme_cubit.dart';
import '../../../../core/theming/logic/app_theme_state.dart';
import '../../../../core/theming/styles.dart';

class ButtonsWidget extends StatefulWidget {
  final int index;
  final VoidCallback onNextPressed;

  const ButtonsWidget(
      {super.key, required this.index, required this.onNextPressed});

  @override
  State<ButtonsWidget> createState() => _ButtonsWidgetState();
}

class _ButtonsWidgetState extends State<ButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return Padding(
      padding: EdgeInsets.all(30.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Text(
              widget.index == 2 ? "Register" : "Skip",
              style: AppTextStyles.font18DarkBlueBold.copyWith(
                color:
                    isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
              ),
            ),
          ),
          GestureDetector(
            onTap: widget.onNextPressed,
            child: Container(
              padding: EdgeInsets.all(15.r),
              decoration: BoxDecoration(
                color: isDarkTheme ? Colors.white : ColorsManager.darkBlue,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Text(
                widget.index == 2 ? "Finish" : "Next",
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
    );
  }
}
