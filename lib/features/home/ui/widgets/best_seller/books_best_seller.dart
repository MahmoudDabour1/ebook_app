import 'package:ebook_app/core/helpers/spacing.dart';
import 'package:ebook_app/core/theming/colors.dart';
import 'package:ebook_app/core/theming/logic/app_theme_cubit.dart';
import 'package:ebook_app/core/theming/logic/app_theme_state.dart';
import 'package:ebook_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'books_best_seller_bloc_builder.dart';

class BooksBestSeller extends StatelessWidget {
  const BooksBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text(
      "Best Seller",
      style: AppTextStyles.font18DarkBlueBold.copyWith(
        color: isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
      ),
    ),
        verticalSpace(16),
        Expanded(child: const BooksBestSellerBlocBuilder()),
        // Add your code here
      ],
    );
  }
}
