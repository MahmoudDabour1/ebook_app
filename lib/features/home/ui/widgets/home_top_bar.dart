import 'package:ebook_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
