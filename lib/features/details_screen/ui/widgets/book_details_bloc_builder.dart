import 'package:ebook_app/features/details_screen/data/models/book_details_response_model.dart';
import 'package:ebook_app/features/details_screen/logic/book_details_cubit.dart';
import 'package:ebook_app/features/details_screen/logic/book_details_state.dart';
import 'package:ebook_app/features/details_screen/ui/widgets/book_details_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_details_images.dart';

class BookDetailsBlocBuilder extends StatelessWidget {
  const BookDetailsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookDetailsCubit,BookDetailsState>(
        buildWhen: (previous, current) =>
            current is DetailsLoading || current is DetailsSuccess|| current is DetailsError,
        builder: (context, state) {
      return state.maybeWhen(
        detailsLoading:(){
          return setupLoading();
        } ,
        detailsSuccess: (bookDetails) => setupSuccess(bookDetails),
        detailsError:(errorHandler){
          return setupError();
        },
        orElse: () => const SizedBox.shrink(),
      );
    });
  }

  Widget setupSuccess(BookDetailsResponseModel bookDetails) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BookDetailsImages(  bookDetailsResponseModel:bookDetails ,),
        BookDetailsDescription(bookDetailsResponseModel: bookDetails,),
      ],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }

  Widget setupLoading() {
    return const CircularProgressIndicator();
  }
}
