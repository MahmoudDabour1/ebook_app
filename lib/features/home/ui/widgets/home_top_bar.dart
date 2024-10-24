import 'package:ebook_app/core/helpers/extensions.dart';
import 'package:ebook_app/core/theming/colors.dart';
import 'package:ebook_app/core/theming/logic/app_theme_cubit.dart';
import 'package:ebook_app/core/theming/logic/app_theme_state.dart';
import 'package:ebook_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/theme_enums.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/search_bar_widget.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "EBook",
            style: AppTextStyles.font24DarkBlueBold.copyWith(
              color: isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
            ),
          ),
          Row(
            children: [
              BlocBuilder<AppThemeCubit, AppThemeState>(
                builder: (context, state) {
                  bool isLightTheme = state.maybeWhen(
                    orElse: () => false,
                    light: () => true,
                    dark: () => false,
                  );
                  return Switch.adaptive(
                    value: isLightTheme,
                    onChanged: (value) {
                      BlocProvider.of<AppThemeCubit>(context).changeTheme(
                        value ? ThemeEnums.light : ThemeEnums.dark,
                      );
                    },
                  );
                },
              ),
              CircleAvatar(
                radius: 24.0.r,
                child: SvgPicture.asset(
                  isDarkTheme
                      ? "assets/svgs/notification-white.svg"
                      : "assets/svgs/notification-black.svg",
                ),
              ),
            ],
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
