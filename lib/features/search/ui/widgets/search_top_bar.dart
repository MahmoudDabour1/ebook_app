import 'package:ebook_app/core/theming/logic/app_theme_cubit.dart';
import 'package:ebook_app/core/theming/logic/app_theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class SearchTopBar extends StatelessWidget {
  const SearchTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          "Search",
          style: AppTextStyles.font24DarkBlueBold.copyWith(
            color: isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
          ),
        ),
        verticalSpace(8),
        Text(
          "Find your favorite books",
          style: AppTextStyles.font18DarkBlueMedium.copyWith(
            color: isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
          ),
        ),
        verticalSpace(24),
      ],
    );
  }
}
