import 'package:ebook_app/features/details_screen/data/repos/book_details_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_details_state.dart';

class BookDetailsCubit extends Cubit<BookDetailsState> {
  final BookDetailsRepo bookDetailsRepo;

  BookDetailsCubit(this.bookDetailsRepo) : super(BookDetailsState.initial());

  void getBookDetails(String bookId) async {
    emit(const BookDetailsState.detailsLoading());
    final response = await bookDetailsRepo.getBookDetails(bookId: bookId);
    response.when(
      success: (bookDetailsResponseModel) {
        emit(BookDetailsState.detailsSuccess(bookDetailsResponseModel));
      },
      failure: (apiErrorModel) {
        emit(BookDetailsState.detailsError(apiErrorModel));
      },
    );
  }
}
