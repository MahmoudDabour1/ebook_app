

import 'package:dio/dio.dart';
import 'package:ebook_app/features/details_screen/data/models/book_details_response_model.dart';
import 'package:ebook_app/features/home/data/models/home_books_response_model.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/error_logger.dart';
import 'api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET(ApiConstants.bestSellerUrl)
  Future<HomeBooksResponseModel> getHomeData();

  @GET("/volumes/{bookId}")
  Future<BookDetailsResponseModel> getBookDetails(@Path('bookId') String bookId);

}