import 'package:ebook_app/core/networking/api_error_handler.dart';
import 'package:ebook_app/core/networking/api_result.dart';
import 'package:ebook_app/core/networking/api_service.dart';
import 'package:ebook_app/features/search/data/models/search_response_model.dart';

class SearchRepo {
  final ApiService _apiService;

  SearchRepo(this._apiService);

  Future<ApiResult<SearchBooksResponseModel>> searchBooks(
      {required String query, int startIndex = 0}) async {
    try {
      final response = await _apiService.searchBooks(query, startIndex);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
