import 'package:ebook_app/features/home/data/models/book_by_category_response_model.dart';
import 'package:ebook_app/features/home/data/models/home_books_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repos/home_repo.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<BookItems?>? bestSellerList = [];
  List<BookItemsByCategory?>? booksByCategoriesList = [];
  int selectByCategoryStartIndex = 0;
  int bestSellerStartIndex = 0;
  String currentCategory = "All";

  void getBestSellerList({bool fromPagination = false}) async {
    if (fromPagination) {
      emit(HomeState.bestSellerPaginationLoading());
    } else {
      emit(const HomeState.bestSellerLoading());
    }
    final response =
        await _homeRepo.getHomeData(startIndex: bestSellerStartIndex);
    response.when(
      success: (homeBooksResponseModel) {
        if (homeBooksResponseModel.items!.isNotEmpty) {
          bestSellerStartIndex = bestSellerStartIndex + 10;
          bestSellerList?.addAll(homeBooksResponseModel.items ?? []);
        }
        emit(HomeState.bestSellerSuccess(bestSellerList));
      },
      failure: (apiErrorModel) {
        emit(HomeState.bestSellerError(apiErrorModel));
      },
    );
  }

//getBookBtCategory
  void getBooksListByCategory(
      {required String category, bool fromPagination = false}) async {
    if (category != currentCategory) {
      selectByCategoryStartIndex = 0;
      booksByCategoriesList = [];
      currentCategory = category;
    }
    if (fromPagination) {
      emit(HomeState.bookByCategoryPaginationLoading());
    } else {
      emit(const HomeState.bookByCategoryLoading());
    }
    final response = await _homeRepo.getBooksByCategoryData(
      category: category,
      startIndex: selectByCategoryStartIndex,
    );
    response.when(
      success: (bookByCategoryResponseModel) {
        if (bookByCategoryResponseModel.items!.isNotEmpty) {
          selectByCategoryStartIndex = selectByCategoryStartIndex + 10;
          booksByCategoriesList
              ?.addAll(bookByCategoryResponseModel.items ?? []);
        }
        emit(HomeState.bookByCategorySuccess(booksByCategoriesList));
      },
      failure: (apiErrorModel) {
        emit(HomeState.bookByCategoryError(apiErrorModel));
      },
    );
  }
}
