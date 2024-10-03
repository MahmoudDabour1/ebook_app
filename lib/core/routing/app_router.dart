import 'package:ebook_app/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../features/home/ui/home_screen.dart';

class AppRouter{
  Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      // case Routes.detailsScreen:
      //   return MaterialPageRoute(builder: (context) => DetailScreen());
      default:
        return null;
    }
  }
}