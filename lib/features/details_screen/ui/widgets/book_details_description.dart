import 'package:ebook_app/core/helpers/spacing.dart';
import 'package:ebook_app/core/theming/logic/app_theme_cubit.dart';
import 'package:ebook_app/core/theming/logic/app_theme_state.dart';
import 'package:ebook_app/features/details_screen/data/models/book_details_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import 'book_details_heart_button.dart';
import 'links_buttons.dart';

class BookDetailsDescription extends StatelessWidget {
  final BookDetailsResponseModel? bookDetailsResponseModel;

  const BookDetailsDescription(
      {super.key, required this.bookDetailsResponseModel});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(10),
          BookDetailsHeartButton(
            book: bookDetailsResponseModel!,
          ),
          verticalSpace(10),
          Text(
            "Print Type: ${bookDetailsResponseModel?.volumeInfo?.printType ?? "No Print Type"}",
            style: AppTextStyles.font18DarkBlueBold.copyWith(
              color: isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
            ),
          ),
          LinksButtons(
            bookDetailsResponseModel: bookDetailsResponseModel,
          ),
          Center(
            child: Text(
              "-------------------------------------------",
              style: AppTextStyles.font16DarkBlueSemiBold.copyWith(
                color:
                    isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
              ),
            ),
          ),
          Text(
            "Description: ",
            style: AppTextStyles.font18DarkBlueBold.copyWith(
              color: isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
            ),
          ),
          verticalSpace(8),
          Text(
            bookDetailsResponseModel?.volumeInfo?.description ??
                "No Description",
            style: AppTextStyles.font18DarkBlueMedium.copyWith(
              color: isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
            ),
          ),
        ],
      ),
    );
  }
}
