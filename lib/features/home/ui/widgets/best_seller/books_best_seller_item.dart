import 'package:cached_network_image/cached_network_image.dart';
import 'package:ebook_app/features/home/data/models/home_books_response_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';

class BooksBestSellerItem extends StatelessWidget {
  final BookItems? bookItems;

  const BooksBestSellerItem({super.key, required this.bookItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: ColorsManager.lighterGray),
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: bookItems?.volumeInfo?.imageLinks?.thumbnail ??
                "https://picsum.photos/200/300",
            width: 169.w,
            height: 178.h,
            fit: BoxFit.fill,
            progressIndicatorBuilder: (context, url, downloadProgress) {
              return Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  width: 169.w,
                  height: 178.h,
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
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          verticalSpace(8),
          Text(
            bookItems?.volumeInfo?.title ?? 'Book Title',
            style: AppTextStyles.font16DarkBlueMedium,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          verticalSpace(4),
          Text(
            bookItems?.volumeInfo?.authors?[0] ?? 'Author Name',
            style: AppTextStyles.font12DarkBlueRegular,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${bookItems?.saleInfo?.retailPrice?.amount ?? 'Free'} ${bookItems?.saleInfo?.retailPrice?.currencyCode ?? ''}',
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
    );
  }
}
