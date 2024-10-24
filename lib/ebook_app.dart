import 'package:ebook_app/core/di/dependency_injection.dart';
import 'package:ebook_app/core/theming/logic/app_theme_cubit.dart';
import 'package:ebook_app/core/theming/logic/app_theme_state.dart';
import 'package:ebook_app/features/search/logic/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/helpers/theme_enums.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/theming/app_themes.dart';
import 'features/favorite/logic/favorite_cubit.dart';
import 'features/home/logic/home_cubit.dart';

class EbookApp extends StatelessWidget {
  final AppRouter appRouter;

  const EbookApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppThemeCubit>(
              create: (_) => AppThemeCubit()..changeTheme(ThemeEnums.initial)),
          BlocProvider<HomeCubit>(
              create: (_) => HomeCubit(getIt())..getBestSellerList()),
          BlocProvider<SearchCubit>(create: (_) => SearchCubit(getIt())),
          BlocProvider<FavoriteCubit>(
            create: (context) => FavoriteCubit()..loadFavoriteBooks(),
          ),
        ],
        child: BlocBuilder<AppThemeCubit, AppThemeState>(
          builder: (context, state) {
            ThemeData theme;
            if (state is AppThemeLight) {
              theme = lightTheme;
            } else if (state is AppThemeDark) {
              theme = darkTheme;
            } else {
              theme = lightTheme;
            }
            return MaterialApp(
              title: 'Ebook App',
              onGenerateRoute: appRouter.generateRoute,
              theme: theme,
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.onBoardingScreen,
            );
          },
        ),
      ),
    );
  }
}
