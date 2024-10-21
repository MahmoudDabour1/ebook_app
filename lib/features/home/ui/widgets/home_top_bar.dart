import 'package:ebook_app/core/helpers/extensions.dart';
import 'package:ebook_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/search_bar_widget.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "EBook",
            style: AppTextStyles.font18DarkBlueMedium,
          ),
          CircleAvatar(
            radius: 24.0,
            child: SvgPicture.asset(
              "assets/svgs/notification.svg",
            ),
          ),
        ],
      ),
      verticalSpace(16),
      GestureDetector(
        onTap: () {
          context.pushNamed(
            Routes.searchScreen,
          );
        },
        child: SearchBarWidget(
          enabled: false,
        ),
      ),
      verticalSpace(24),
    ]);
  }
}
