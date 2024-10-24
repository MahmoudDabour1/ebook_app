import 'package:ebook_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/app_constants.dart';
import '../../../../../core/theming/logic/app_theme_cubit.dart';
import '../../../../../core/theming/logic/app_theme_state.dart';
import '../../../../../core/theming/styles.dart';

class CategoryListItem extends StatelessWidget {
  final int index;
  final int selectedIndex;

  const CategoryListItem(
      {super.key, required this.index, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color:
        index == selectedIndex ?  (isDarkTheme?ColorsManager.white:ColorsManager.darkBlue) : (isDarkTheme?ColorsManager.moreDarkGray:ColorsManager.white),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0.r),
        child: Text(
          AppConstants.selectByCategory[index],
          style: AppTextStyles.font18DarkBlueMedium.copyWith(
            color: index == selectedIndex
                ?  (isDarkTheme?ColorsManager.darkBlue:ColorsManager.white) : (isDarkTheme?ColorsManager.lightGray:ColorsManager.moreDarkGray),
          ),
        ),
      ),
    );
  }
}