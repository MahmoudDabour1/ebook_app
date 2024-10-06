import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/helpers/spacing.dart';

class BestSellerShimmerLoading extends StatelessWidget {
  const BestSellerShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 16.w,
      mainAxisSpacing: 16.h,
      childAspectRatio: 1 / 1.8,
      children: List.generate(
        10,
        (index) => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            children: [
              Skeletonizer(
                enabled: true,
                child: Container(
                    width: 169.w,
                    height: 178.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.r),
                      color: Colors.grey[100],
                    )),
              ),
              verticalSpace(8),
              Skeletonizer(
                enabled: true,
                child: Text(
                  'Book Title',
                ),
              ),
              verticalSpace(4),
              Skeletonizer(
                enabled: true,
                child: Text(
                  'Author Name',
                ),
              ),
              verticalSpace(8),
              Skeletonizer(
                enabled: true,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${'0'} ${'USD'}',
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
      ),
    );
  }
}
