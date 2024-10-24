import 'package:cached_network_image/cached_network_image.dart';
import 'package:ebook_app/core/theming/logic/app_theme_cubit.dart';
import 'package:ebook_app/core/theming/logic/app_theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/book_details_response_model.dart';

class BookDetailsImages extends StatelessWidget {
  final BookDetailsResponseModel bookDetailsResponseModel;

  const BookDetailsImages({super.key, required this.bookDetailsResponseModel});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return SizedBox(
      height: 427.h,
      width: double.infinity,
      child:Stack(
        children: [
          CachedNetworkImage(
            imageUrl: bookDetailsResponseModel
                .volumeInfo?.imageLinks?.thumbnail ??
                "https://picsum.photos/200/300",
            width: double.infinity,
            height: 400.h,
            fit: BoxFit.fill,
            progressIndicatorBuilder: (context, url, downloadProgress) {
              return Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  width: double.infinity,
                  height: 400.h,
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
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          Container(
            width: double.infinity,
            height: 400.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: isDarkTheme
                      ? Colors.black.withOpacity(0.7)
                      : Colors.white.withOpacity(0.7),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
          ),
          verticalSpace(8),
          Center(
            child: Column(
              children: [
                verticalSpace(16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                  child: Text(
                    bookDetailsResponseModel.volumeInfo?.title ??
                        "Book Title",
                    style: AppTextStyles.font20DarkBlueMedium.copyWith(
                      color: isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
                verticalSpace(8),
                Text(
                  bookDetailsResponseModel.volumeInfo?.authors?[0] ??
                      "Author Name",
                  style: AppTextStyles.font14DarkGrayRegular.copyWith(
                    color: isDarkTheme ? ColorsManager.lightGray : ColorsManager.darkBlue,
                  ),
                ),
                verticalSpace(265),
                Container(
                  width: 300.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: isDarkTheme?ColorsManager.moreDarkGray:ColorsManager.white,
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      color:isDarkTheme?ColorsManager.containerGrayColor: Colors.grey[300]!,
                    ),
                  ),
                  child: Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 180.w,
                            child: Text(
                              bookDetailsResponseModel
                                  .volumeInfo?.publisher ??
                                  "Publisher Name",
                              style: AppTextStyles.font14DarkGrayBold.copyWith(
                                color: isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          horizontalSpace(8),
                          Text(
                            "|",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "(${bookDetailsResponseModel.volumeInfo?.pageCount} Pages)",
                            style: AppTextStyles.font14DarkGrayBold.copyWith(
                              color: isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: CachedNetworkImage(
              imageUrl:
              bookDetailsResponseModel.volumeInfo?.imageLinks?.large ??
                  "https://picsum.photos/200/300",
              width: 170.w,
              height: 220.h,
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
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ],
      ),
    );
  }
}
