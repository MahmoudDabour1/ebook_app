import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/helpers/spacing.dart';

class SearchShimmerLoadingItem extends StatelessWidget {
  const SearchShimmerLoadingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0.h),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Skeletonizer(
            enabled: true,
            child: Container(
              width: 150.w,
              height: 140.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    bottomLeft: Radius.circular(12.r)),
                color: Colors.grey[100],
              ),
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Skeletonizer(
                  enabled: true,
                  child: Text(
                    "Title",
                  ),
                ),
                Skeletonizer(
                  enabled: true,
                  child: Text(
                    "Author Name",
                  ),
                ),
                Skeletonizer(
                  enabled: true,
                  child: Text(
                    'Free',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
