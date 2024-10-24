import 'package:ebook_app/core/theming/colors.dart';
import 'package:ebook_app/core/theming/logic/app_theme_cubit.dart';
import 'package:ebook_app/core/theming/logic/app_theme_state.dart';
import 'package:ebook_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchBarWidget extends StatelessWidget {
  final bool enabled;
  final void Function(String?)? onChanged;

  const SearchBarWidget({super.key, this.enabled = true, this.onChanged});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return TextFormField(
      enabled: enabled,
      onChanged: onChanged,
      decoration: InputDecoration(
        fillColor:isDarkTheme?ColorsManager.moreDarkGray: ColorsManager.lighterGray,
        filled: true,
        hintText: '     Search for books',
        hintStyle: AppTextStyles.font18DarkBlueRegular.copyWith(
          color: isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 35.h,
          maxWidth: 35.w,
        ),
        prefixIcon:
        Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: SvgPicture.asset(
            isDarkTheme?"assets/svgs/search_white.svg":"assets/svgs/search.svg",
          ),
        ),
        suffixIconConstraints: BoxConstraints(
          maxHeight: 40.h,
          maxWidth: 40.w,

        ),
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: SvgPicture.asset(
            isDarkTheme?"assets/svgs/Microphone_white.svg":"assets/svgs/microphone2.svg",
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
