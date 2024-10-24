import 'package:cached_network_image/cached_network_image.dart';
import 'package:ebook_app/core/theming/colors.dart';
import 'package:ebook_app/core/theming/logic/app_theme_cubit.dart';
import 'package:ebook_app/core/theming/logic/app_theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return  Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 10.w,
      ),
      child:Container(
        width: 150.w,
        decoration: BoxDecoration(
          color:isDarkTheme?ColorsManager.moreDarkGray: ColorsManager.containerGrayColor,
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
              style: AppTextStyles.font18DarkBlueBold.copyWith(
                color: isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
              ),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
            Text(
              "${bookItemsByCategory?.volumeInfo?.pageCount} Pages",
              style: AppTextStyles.font16DarkBlueSemiBold.copyWith(
                color: isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),

          ],
        ),
      ),
    );
  }
}
