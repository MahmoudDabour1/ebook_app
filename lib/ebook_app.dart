import 'package:ebook_app/core/di/dependency_injection.dart';
import 'package:ebook_app/core/theming/colors.dart';
import 'package:ebook_app/features/search/logic/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
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
          BlocProvider<HomeCubit>(create: (_) => HomeCubit(getIt())..getBestSellerList()),
          BlocProvider<SearchCubit>(create: (_) => SearchCubit(getIt())),
        ],
        child: MaterialApp(
          title: 'Ebook App',
          onGenerateRoute: appRouter.generateRoute,
          theme: ThemeData(
            primaryColor: ColorsManager.primaryColor,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.onBoardingScreen,
        ),
      ),
    );
  }
}
