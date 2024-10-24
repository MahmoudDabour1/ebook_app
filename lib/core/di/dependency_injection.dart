import 'package:dio/dio.dart';
import 'package:ebook_app/core/theming/logic/app_theme_cubit.dart';
import 'package:ebook_app/features/home/data/repos/home_repo.dart';
import 'package:ebook_app/features/home/logic/home_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/details_screen/data/repos/book_details_repo.dart';
import '../../features/details_screen/logic/book_details_cubit.dart';
import '../../features/search/data/repos/search_repo.dart';
import '../../features/search/logic/search_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit(getIt()));

  //details
  getIt.registerLazySingleton<BookDetailsRepo>(() => BookDetailsRepo(getIt()));
  getIt
      .registerLazySingleton<BookDetailsCubit>(() => BookDetailsCubit(getIt()));

  //search
  getIt.registerLazySingleton<SearchRepo>(() => SearchRepo(getIt()));
  getIt.registerLazySingleton<SearchCubit>(() => SearchCubit(getIt()));
//theme
  getIt.registerFactory<AppThemeCubit>(()=>AppThemeCubit());

}
