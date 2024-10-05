import 'package:ebook_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/app_constants.dart';
import '../../../../../core/theming/styles.dart';

class CategoryListItem extends StatelessWidget {
  final int index;
  final int selectedIndex;

  const CategoryListItem(
      {super.key,
      required this.index,
      required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: index==selectedIndex?ColorsManager.darkBlue:Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(8.0.r),
        child: Text(
          AppConstants.selectByCategory[index],
          style: AppTextStyles.font18DarkBlueMedium.copyWith(
            color:  index==selectedIndex?Colors.white:ColorsManager.darkBlue,
          ),
        ),
      ),
    );
  }
}
