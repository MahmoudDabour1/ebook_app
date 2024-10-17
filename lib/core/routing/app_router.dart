import 'package:ebook_app/core/di/dependency_injection.dart';
import 'package:ebook_app/core/routing/routes.dart';
import 'package:ebook_app/features/details_screen/logic/book_details_cubit.dart';
import 'package:ebook_app/features/details_screen/ui/details_screen.dart';
import 'package:ebook_app/features/home/logic/home_cubit.dart';
import 'package:ebook_app/features/search/logic/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/ui/home_screen.dart';
import '../../features/search/ui/search_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => HomeCubit(getIt())..getBestSellerList(),
                  child: HomeScreen(),
                ));
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
          builder: (context) => BlocProvider(
              create: (context) => SearchCubit(getIt()),
              child: SearchScreen()),
        );
      default:
        return null;
    }
  }
}
