
import 'package:ebook_app/features/search/data/models/search_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/networking/api_error_model.dart';

part 'search_state.freezed.dart';
@freezed
 class SearchState with _$SearchState {
 const factory SearchState.initial() = SearchInitial;

 const factory SearchState.searchLoading() = SearchLoading;

 const factory SearchState.searchSuccess(
     List<SearchBookItems?>? books) = SearchSuccess;

 const factory SearchState.searchError(ApiErrorModel apiErrorModel) = SearchError;

  const factory SearchState.searchLoadingPagination() = SearchLoadingPagination;
}
