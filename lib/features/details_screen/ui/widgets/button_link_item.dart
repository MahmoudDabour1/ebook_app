import 'package:ebook_app/core/theming/colors.dart';
import 'package:ebook_app/core/theming/logic/app_theme_state.dart';
import 'package:ebook_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/logic/app_theme_cubit.dart';

class ButtonLinkItem extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const ButtonLinkItem({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return GestureDetector(
      onTap: onTap,
      child:Container(
        height: 60.h,
        decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: isDarkTheme?ColorsManager.white: Colors.black,
            width: 2.w,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              title,
              style: AppTextStyles.font16DarkBlueMedium.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
