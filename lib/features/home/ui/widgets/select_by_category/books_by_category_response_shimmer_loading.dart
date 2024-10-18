import 'package:ebook_app/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BooksByCategoryResponseShimmerLoading extends StatelessWidget {
  const BooksByCategoryResponseShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsetsDirectional.only(
                start: 10.w,
              ),
              child: Container(
                height: 200.h,
                width: 150.w,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12.r),
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
                          color: Colors.grey[100],
                        ),
                      ),
                    ),
                    Skeletonizer(
                      enabled: true,
                      child: Text(
                        "title",
                        style: AppTextStyles.font18DarkBlueBold,
                      ),
                    ),
                    Skeletonizer(
                      enabled: true,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pages",
                            ),
                            CupertinoButton(
                              padding: EdgeInsets.zero,
                              child: Icon(
                                CupertinoIcons.heart_fill,
                                color: Colors.red,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
