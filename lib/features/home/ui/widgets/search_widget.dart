import 'package:ebook_app/core/theming/colors.dart';
import 'package:ebook_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: ColorsManager.lighterGray,
        filled: true,
        hintText: '   Search for books',
        hintStyle: AppTextStyles.font18DarkBlueRegular,
        prefixIconConstraints: BoxConstraints(
          maxHeight: 30.h,
          maxWidth: 30.w,
        ),
        prefixIcon:  SvgPicture.asset(
          "assets/svgs/search.svg",
          height: 20.h,
          width: 20.w,
        ),
        suffixIconConstraints: BoxConstraints(
          maxHeight: 30.h,
          maxWidth: 30.w,
        ),
        suffixIcon: SvgPicture.asset(
          "assets/svgs/microphone2.svg",
          height: 20.h,
          width: 20.w,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
