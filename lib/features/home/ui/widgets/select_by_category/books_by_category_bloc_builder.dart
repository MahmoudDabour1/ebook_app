import 'package:ebook_app/features/home/logic/home_cubit.dart';
import 'package:ebook_app/features/home/logic/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'books_by_category_response_shimmer_loading.dart';
import 'category_response_list_view.dart';

class BooksByCategoryBlocBuilder extends StatelessWidget {
  const BooksByCategoryBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is BookByCategoryLoading ||
            current is BookByCategorySuccess ||
            current is BookByCategoryError||current is !BookByCategoryPaginationLoading,
        builder: (context, state) {
          return state.maybeWhen(
            bookByCategorySuccess: (bookByCategoryResponseModel) {
              var bookByCategoryList = bookByCategoryResponseModel;
              return setupSuccess(bookByCategoryList);
            },
            bookByCategoryLoading: () => setupLoading(),
            bookByCategoryError: (errorHandler) => setupError(),
            orElse: () => const SizedBox.shrink(),
          );
        });
  }

  Widget setupSuccess(bookByCategoryList) {
    return CategoryResponseListView(
      booksItemsByCategory: bookByCategoryList ?? [],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }

  Widget setupLoading() {
    return const BooksByCategoryResponseShimmerLoading();
  }
}
