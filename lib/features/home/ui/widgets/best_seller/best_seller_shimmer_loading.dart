import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'best_seller_shimmer_loading_item.dart';

class BestSellerShimmerLoading extends StatelessWidget {
  const BestSellerShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 1 / 1.8,
      ),
      itemCount: 10,
      itemBuilder: (context, index) {
        return BestSellerShimmerLoadingItem();
      },
    );
  }
}
