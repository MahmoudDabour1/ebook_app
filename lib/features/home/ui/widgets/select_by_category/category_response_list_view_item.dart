import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/theming/styles.dart';
import '../../../data/models/book_by_category_response_model.dart';

class CategoryResponseListViewItem extends StatelessWidget {
  final BookItemsByCategory? bookItemsByCategory;
  final int itemIndex;
  const CategoryResponseListViewItem({super.key, required this.itemIndex, required this.bookItemsByCategory});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 10.w,
      ),
      child: Container(
        width: 150.w,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl:bookItemsByCategory?.volumeInfo?.imageLinks?.thumbnail?? "https://picsum.photos/200/300",
              height: 130.h,
              fit: BoxFit.fill,
              progressIndicatorBuilder:
                  (context, url, downloadProgress) {
                return Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  child: Container(
                    height: 130.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12.r),
                      color: Colors.white,
                    ),
                  ),
                );
              },
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12.r),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              errorWidget: (context, url, error) =>
              const Icon(Icons.error),
            ),
            Text(
              bookItemsByCategory?.volumeInfo?.title??"title",
              style: AppTextStyles.font18DarkBlueBold,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${bookItemsByCategory?.volumeInfo?.pageCount} Pages",
                    style: AppTextStyles.font16DarkBlueSemiBold,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
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

          ],
        ),
      ),
    );
  }
}
