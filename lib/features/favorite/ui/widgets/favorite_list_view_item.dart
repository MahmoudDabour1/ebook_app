import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/logic/app_theme_cubit.dart';
import '../../../../core/theming/logic/app_theme_state.dart';
import '../../../../core/theming/styles.dart';
import '../../../details_screen/data/models/book_details_response_model.dart';

class FavoriteListViewItem extends StatelessWidget {
  final BookDetailsResponseModel? favoriteBooks;
  const FavoriteListViewItem({super.key, this.favoriteBooks});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return  Container(
      margin: EdgeInsets.only(bottom: 16.0.h),
      decoration: BoxDecoration(
        color: isDarkTheme?ColorsManager.moreDarkGray:  ColorsManager.containerGrayColor,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: favoriteBooks?.volumeInfo?.imageLinks?.thumbnail ??
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
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        bottomLeft: Radius.circular(12.r)),
                    color: Colors.white,
                  ),
                ),
              );
            },
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    bottomLeft: Radius.circular(12.r)),
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
                  favoriteBooks?.volumeInfo?.title ?? "Title",
                  style: AppTextStyles.font18DarkBlueBold.copyWith(
                    color: isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Text(
                  favoriteBooks?.volumeInfo?.authors?[0] ?? "Author Name",
                  style: AppTextStyles.font16DarkBlueMedium.copyWith(
                    color: isDarkTheme ? ColorsManager.lightGray : ColorsManager.darkBlue,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Text(
                  '${favoriteBooks?.saleInfo?.retailPrice?.amount ?? 'Free'} ${favoriteBooks?.saleInfo?.retailPrice?.currencyCode ?? ''}',
                  style: AppTextStyles.font14DarkGrayRegular.copyWith(
                    color: isDarkTheme ? ColorsManager.lighterGray : ColorsManager.darkBlue,
                  ),
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
