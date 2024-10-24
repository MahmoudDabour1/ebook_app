import 'package:ebook_app/core/helpers/spacing.dart';
import 'package:ebook_app/core/theming/logic/app_theme_cubit.dart';
import 'package:ebook_app/core/theming/logic/app_theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class BookByCategoryShimmerLoadingItem extends StatelessWidget {
  const BookByCategoryShimmerLoadingItem({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: 10.w,
      ),
      child: Container(
        height: 200.h,
        width: 150.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            style: BorderStyle.solid,
            color: isDarkTheme
                ? ColorsManager.moreDarkGray
                : ColorsManager.containerGrayColor,
          ),
        ),
        child: Column(
          children: [
            Skeletonizer(
              enabled: true,
              child: Container(
                height: 130.h,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12.r),
                  color: isDarkTheme
                      ? ColorsManager.moreDarkGray
                      : Colors.grey[100],
                ),
              ),
            ),
            Skeletonizer(
              enabled: true,
              child: Text(
                "Author Name",
                style: AppTextStyles.font18DarkBlueBold,
                maxLines: 2,
              ),
            ),
            verticalSpace(8),
            Skeletonizer(
              enabled: true,
              child: Text(
                "Pages",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
