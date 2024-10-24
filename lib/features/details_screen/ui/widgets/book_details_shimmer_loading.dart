import 'package:ebook_app/core/helpers/spacing.dart';
import 'package:ebook_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/theming/logic/app_theme_cubit.dart';
import '../../../../core/theming/logic/app_theme_state.dart';
import '../../../../core/theming/styles.dart';
import 'button_link_item.dart';

class BooKDetailsShimmerLoading extends StatelessWidget {
  const BooKDetailsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                          color: isDarkTheme
                              ? ColorsManager.moreDarkGray
                              : Colors.white,
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
        verticalSpace(10),
        Skeletonizer(
          enabled: true,
          child: Center(
            child: Container(
              width: 60.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
        ),
        verticalSpace(8),
        Skeletonizer(
          enabled: true,
          child: Text(
            "Print Type: Book",
            style: AppTextStyles.font18DarkBlueBold,
          ),
        ),
        verticalSpace(8),
        Skeletonizer(
          enabled: true,
          child: Text(
            "Links: ",
            style: AppTextStyles.font18DarkBlueBold,
          ),
        ),
        verticalSpace(16),
        Skeletonizer(
          enabled: true,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ButtonLinkItem(
                    isShimmer: true,
                    title: "Preview Link",
                  ),
                ),
              ),
              Expanded(
                child: ButtonLinkItem(
                  isShimmer:  true,
                  title: "Buy Link",
                  onTap: () async {},
                ),
              ),
            ],
          ),
        ),
        verticalSpace(8),
        Skeletonizer(
          enabled: true,
          child: ButtonLinkItem(
            isShimmer: true,
            title: "Pdf Download Link",
            onTap: () async {},
          ),
        ),
        verticalSpace(16),
        Skeletonizer(
          enabled: true,
          child: Text(
            "Description Description",
            style: AppTextStyles.font18DarkBlueBold,
          ),
        ),
        verticalSpace(8),
        Skeletonizer(
          enabled: true,
          child: Text(
            "Description Description",
            style: AppTextStyles.font18DarkBlueBold,
          ),
        ),
      ],
    );
  }
}
