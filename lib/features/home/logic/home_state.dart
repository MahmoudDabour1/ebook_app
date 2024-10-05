import 'package:ebook_app/core/networking/api_error_model.dart';
import 'package:ebook_app/features/home/data/models/home_books_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  //books
  const factory HomeState.bestSellerLoading() = BestSellerLoading;
  const factory HomeState.bestSellerSuccess(List<BookItems?>? bookItems) = BestSellerSuccess;
  const factory HomeState.bestSellerError(ApiErrorModel apiErrorModel) = BestSellerError;

  //categories
  // const factory HomeState.filterCategoriesSuccess(List<BookItems?>? bookItem) = FilterCategoriesSuccess;
  // const factory HomeState.filterCategoriesError() = FilterCategoriesError;

}

