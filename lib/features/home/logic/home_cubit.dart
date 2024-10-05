

import 'package:ebook_app/core/helpers/app_constants.dart';
import 'package:ebook_app/features/home/data/models/home_books_response_model.dart';

import '../data/repos/home_repo.dart';
import 'home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo): super(const HomeState.initial());

  List<BookItems?>? bestSellerList = [];
  bool isShimmer = false;

  void getBestSellerList() async {
    emit(const HomeState.bestSellerLoading());
    isShimmer = true;
    final response = await _homeRepo.getHomeData();
   response.when(
      success: (homeBooksResponseModel) {
        isShimmer = false;
       bestSellerList = homeBooksResponseModel.items??[];
        emit(HomeState.bestSellerSuccess(bestSellerList));
      },
      failure: (apiErrorModel) {
        isShimmer = false;
        emit(HomeState.bestSellerError(apiErrorModel));
      },
    );
  }

  // void getFilterCategoriesList({required String category}) async {
  //   emit(const HomeState.bestSellerLoading());
  //   List<BookItems?>? filterCategoriesList = getBooksListByCategory(category);
  //   final response = await _homeRepo.getHomeData();
  //   response.when(
  //     success: (homeBooksResponseModel) {
  //       emit(HomeState.filterCategoriesSuccess(homeBooksResponseModel.items));
  //     },
  //     failure: (apiErrorModel) {
  //       emit(HomeState.filterCategoriesError());
  //     },
  //   );
  // }
  //
  // getBooksListByCategory( category) {
  //   return bestSellerList?.firstWhere((element) => element?.volumeInfo?.categories?[0] == category)?.filterCategoriesList;
  // }
}
