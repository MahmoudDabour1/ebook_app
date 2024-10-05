import 'package:ebook_app/core/networking/api_error_handler.dart';
import 'package:ebook_app/core/networking/api_service.dart';
import 'package:ebook_app/features/details_screen/data/models/book_details_response_model.dart';

import '../../../../core/networking/api_result.dart';

class BookDetailsRepo {
  final ApiService _apiService;

  BookDetailsRepo(this._apiService);

  Future<ApiResult<BookDetailsResponseModel>> getBookDetails(
      {required String bookId}) async {
    try {
      final response = await _apiService.getBookDetails(bookId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
