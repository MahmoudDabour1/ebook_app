import 'package:ebook_app/features/search/data/models/search_response_model.dart';
import 'package:ebook_app/features/search/data/repos/search_repo.dart';
import 'package:ebook_app/features/search/logic/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo _searchRepo;

  SearchCubit(this._searchRepo) : super(const SearchState.initial());

  List<SearchBookItems?>? searchBooksList = [];
  int searchStartIndex = 0;
  String searchQuery = '';

  void searchBooks({required String query, bool fromPagination = false}) async {
    if (fromPagination) {
      emit(SearchState.searchLoadingPagination());
    } else {
      emit(SearchState.searchLoading());
    }
    final response = await _searchRepo.searchBooks(
      query: query,
      startIndex: searchStartIndex,
    );
    response.when(
      success: (searchBookResponseModel) {
        if (searchBookResponseModel.items!.isNotEmpty) {
          searchStartIndex += 10;
          searchBooksList?.addAll(searchBookResponseModel.items ?? []);
        }
        emit(SearchState.searchSuccess(searchBooksList));
      },
      failure: (apiErrorModel) {
        emit(SearchState.searchError(apiErrorModel));
      },
    );
  }

  void clearSearchResults() {
    searchBooksList?.clear();
    searchStartIndex = 0; // Reset the index if you want to start fresh
    emit(SearchState.searchSuccess(searchBooksList)); // Emit updated state
  }
}
