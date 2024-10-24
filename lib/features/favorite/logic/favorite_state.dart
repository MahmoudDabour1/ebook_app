import 'package:freezed_annotation/freezed_annotation.dart';

import '../../details_screen/data/models/book_details_response_model.dart';

part 'favorite_state.freezed.dart';
@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = FavoriteInitial;
  const factory FavoriteState.favoriteAddedSuccessfully(String bookId) =  FavoriteAddedSuccessfully;
  const factory FavoriteState.favoriteRemovedSuccessfully(String bookId) = FavoriteRemovedSuccessfully;
  const factory FavoriteState.favoriteLoadedSuccessfully(List<BookDetailsResponseModel> book) = FavoriteLoadedSuccessfully;
}

