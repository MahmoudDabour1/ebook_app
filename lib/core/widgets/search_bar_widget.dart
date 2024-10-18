import 'package:ebook_app/core/theming/colors.dart';
import 'package:ebook_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarWidget extends StatelessWidget {
 final bool enabled;
 final void Function(String?)? onChanged;

   const SearchBarWidget({super.key,  this.enabled = true,  this.onChanged});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled:enabled ,
      onChanged: onChanged,
      decoration: InputDecoration(
        fillColor: ColorsManager.lighterGray,
        filled: true,
        hintText: '     Search for books',
        hintStyle: AppTextStyles.font18DarkBlueRegular,
        prefixIconConstraints: BoxConstraints(
          maxHeight: 35.h,
          maxWidth: 35.w,
        ),
        prefixIcon:  Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: SvgPicture.asset(
            "assets/svgs/search.svg",
          ),
        ),
        suffixIconConstraints: BoxConstraints(
          maxHeight: 40.h,
          maxWidth: 40.w,

        ),
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: SvgPicture.asset(
            "assets/svgs/microphone2.svg",
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
