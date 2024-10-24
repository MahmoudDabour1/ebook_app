import 'package:ebook_app/features/details_screen/data/models/book_details_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

import '../../../core/helpers/app_constants.dart';
import 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(const FavoriteState.initial());
  List<BookDetailsResponseModel> favoriteBooks = [];

  void addFavorite(BookDetailsResponseModel book) {
    favoriteBooks.add(book);
    Hive.box<BookDetailsResponseModel>(kBookItemBox).put(book.id, book);
    emit(FavoriteState.favoriteAddedSuccessfully(book.id!));
    emit(FavoriteState.favoriteLoadedSuccessfully(favoriteBooks));
  }


  void removeFavorite(String id) {
    favoriteBooks.removeWhere((bookModel) => bookModel.id == id);
    Hive.box<BookDetailsResponseModel>(kBookItemBox).delete(id);
    emit(FavoriteState.favoriteRemovedSuccessfully(id));
    emit(FavoriteState.favoriteLoadedSuccessfully(favoriteBooks));
  }

  void loadFavoriteBooks() {
    favoriteBooks = Hive.box<BookDetailsResponseModel>(kBookItemBox).values.toList();
    emit(FavoriteState.favoriteLoadedSuccessfully(favoriteBooks));
  }

  void toggleFavorite(BookDetailsResponseModel book) {
    if (favoriteBooks.any((bookModel) => bookModel.id == book.id)) {
      favoriteBooks.remove(book);
      favoriteBooks.removeWhere((bookModel) => bookModel.id == book.id);
      Hive.box<BookDetailsResponseModel>(kBookItemBox).delete(book.id);
    } else {
      favoriteBooks.add(book);
      Hive.box<BookDetailsResponseModel>(kBookItemBox).put(book.id, book);
    }
    emit(FavoriteState.favoriteLoadedSuccessfully(favoriteBooks));
  }
}
