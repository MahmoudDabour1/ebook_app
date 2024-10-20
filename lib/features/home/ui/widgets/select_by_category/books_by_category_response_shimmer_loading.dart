import 'package:ebook_app/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'book_by_category_shimmer_loading_item.dart';

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
            return BookByCategoryShimmerLoadingItem();
          }),
    );
  }
}
