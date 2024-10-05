import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/networking/api_error_model.dart';
import '../data/models/book_details_response_model.dart';

part 'book_details_state.freezed.dart';
@freezed
 class BookDetailsState with _$BookDetailsState {
  const factory BookDetailsState.initial() = _Initial;
  const factory BookDetailsState.detailsLoading() = DetailsLoading;
  const factory BookDetailsState.detailsSuccess(BookDetailsResponseModel bookDetails) = DetailsSuccess;
  const factory BookDetailsState.detailsError(ApiErrorModel apiErrorModel) = DetailsError;
}


