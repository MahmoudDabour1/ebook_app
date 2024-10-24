import 'package:ebook_app/core/di/dependency_injection.dart';
import 'package:ebook_app/core/routing/routes.dart';
import 'package:ebook_app/features/bottom_nav_bar_widget.dart';
import 'package:ebook_app/features/details_screen/logic/book_details_cubit.dart';
import 'package:ebook_app/features/details_screen/ui/details_screen.dart';
import 'package:ebook_app/features/favorite/ui/favorite_screen.dart';
import 'package:ebook_app/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/ui/home_screen.dart';
import '../../features/search/ui/search_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => OnBoardingScreen(),
        );
      case Routes.bottomNavBarWidget:
        return MaterialPageRoute(
          builder: (context) => BottomNavBarWidget(),
        );
      case Routes.favoriteScreen:
        return MaterialPageRoute(
          builder: (context) => FavoriteScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (context) => HomeScreen());
      case Routes.detailsScreen:
        final bookId = settings.arguments as String;

        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) =>
                      BookDetailsCubit(getIt())..getBookDetails(bookId),
                  child: DetailsScreen(),
                ));
      case Routes.searchScreen:
        return MaterialPageRoute(
          builder: (context) => SearchScreen(),
        );
      default:
        return null;
    }
  }
}
