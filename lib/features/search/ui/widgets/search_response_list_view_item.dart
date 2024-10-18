import 'package:cached_network_image/cached_network_image.dart';
import 'package:ebook_app/features/search/data/models/search_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class SearchResponseListViewItem extends StatelessWidget {
  final SearchBookItems? searchBookItems;

  const SearchResponseListViewItem({super.key, required this.searchBookItems});

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
          CachedNetworkImage(
            imageUrl: searchBookItems?.volumeInfo?.imageLinks?.thumbnail ??
                "https://picsum.photos/200/300",
            width: 150.w,
            height: 140.h,
            fit: BoxFit.fill,
            progressIndicatorBuilder: (context, url, downloadProgress) {
              return Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                    width: 150.w,
                    height: 140.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius:BorderRadius.only(topLeft: Radius.circular(12.r), bottomLeft: Radius.circular(12.r)),
                    color: Colors.white,
                  ),
                ),
              );
            },
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(12.r), bottomLeft: Radius.circular(12.r)),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  searchBookItems?.volumeInfo?.title ?? "Title",
                  style: AppTextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Text(
                  searchBookItems?.volumeInfo?.authors?[0] ?? "Author Name",
                  style: AppTextStyles.font16DarkBlueMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Text(
                  '${searchBookItems?.saleInfo?.retailPrice?.amount ?? 'Free'} ${searchBookItems?.saleInfo?.retailPrice?.currencyCode ?? ''}',
                  style: AppTextStyles.font14DarkGrayRegular,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
