import 'package:ebook_app/core/networking/api_error_handler.dart';
import 'package:ebook_app/core/networking/api_result.dart';
import 'package:ebook_app/core/networking/api_service.dart';
import 'package:ebook_app/features/home/data/models/home_books_response_model.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<HomeBooksResponseModel>> getHomeData() async {
   try{
     final response = await _apiService.getHomeData();
     return ApiResult.success(response);
   }catch(error){
     return ApiResult.failure(ApiErrorHandler.handle(error));
   }
  }
}