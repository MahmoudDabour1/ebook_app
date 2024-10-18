import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class SearchTopBar extends StatelessWidget {
  const SearchTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          "Search",
          style: AppTextStyles.font24DarkBlueBold,
        ),
        verticalSpace(8),
        Text(
          "Find your favorite books",
          style: AppTextStyles.font18DarkBlueMedium,
        ),
        verticalSpace(24),
      ],
    );
  }
}
