import 'package:ebook_app/core/helpers/spacing.dart';
import 'package:ebook_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/theming/logic/app_theme_cubit.dart';
import '../../../../core/theming/logic/app_theme_state.dart';
import '../../../../core/theming/styles.dart';

class BooKDetailsShimmerLoading extends StatelessWidget {
  const BooKDetailsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return Column(
      children: [
        SizedBox(
          height: 427.h,
          width: double.infinity,
          child: Stack(
            children: [
              Skeletonizer(
                enabled: true,
                child: Container(
                  height: 400.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),

                  ),
                ),
              ),
              Skeletonizer(
                enabled: true,
                child: Container(
                  width: double.infinity,
                  height: 400.h,
                  color: Colors.grey[800],
                ),
              ),
              verticalSpace(8),
              Center(
                child: Skeletonizer(
                  enabled: true,
                  child: Column(
                    children: [
                      verticalSpace(16),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                        child: Text(
                          "Book Title",
                          style: AppTextStyles.font20DarkBlueMedium,
                          maxLines: 2,
                        ),
                      ),
                      verticalSpace(8),
                      Text(
                        "Author Name",
                        style: AppTextStyles.font14DarkGrayRegular,
                      ),
                      verticalSpace(295),
                      Container(
                        width: 295.w,
                        height: 54.h,
                        decoration: BoxDecoration(
                          color:isDarkTheme?ColorsManager.moreDarkGray: Colors.white,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "publisher",
                                style: AppTextStyles.font14DarkGrayBold,
                              ),
                              horizontalSpace(8),
                              Text(
                                "pages",
                                style: AppTextStyles.font14DarkGrayBold,
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Skeletonizer(
                  enabled: true,
                  child: Container(
                    width: 170.w,
                    height: 220.h,
                    color: Colors.grey[300],
                  ),
                ),
              ),
            ],
          ),
        ),
        Skeletonizer(
          enabled: true,
          child: Text(
            "Description",
            style: AppTextStyles.font18DarkBlueBold,
          ),
        ),
        verticalSpace(8),
        Skeletonizer(
          enabled: true,
          child: Text(
            "Description",
            style: AppTextStyles.font18DarkBlueBold,
          ),
        ),
      ],
    );
  }
}
