import 'package:dio/dio.dart';
import 'package:ebook_app/features/details_screen/data/models/book_details_response_model.dart';
import 'package:ebook_app/features/home/data/models/book_by_category_response_model.dart';
import 'package:ebook_app/features/home/data/models/home_books_response_model.dart';
import 'package:ebook_app/features/search/data/models/search_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET(ApiConstants.bestSellerUrl)
  Future<HomeBooksResponseModel> getHomeData(
      @Query('startIndex') int startIndex,
      );

  @GET("/volumes/{bookId}")
  Future<BookDetailsResponseModel> getBookDetails(
      @Path('bookId') String bookId);

  @GET("/volumes?q={category}")
  Future<BookByCategoryResponseModel> getBooksByCategory(
    @Path('category') String category,
    @Query('startIndex') int startIndex,
  );

  //search
  @GET("/volumes?q={search}")
  Future<SearchBooksResponseModel> searchBooks(
    @Path('search') String search,
    @Query('startIndex') int startIndex,
  );
}
