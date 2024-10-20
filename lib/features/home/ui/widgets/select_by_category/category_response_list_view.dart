import 'dart:developer';

import 'package:ebook_app/core/helpers/constants.dart';
import 'package:ebook_app/core/helpers/shared_pref_helper.dart';
import 'package:ebook_app/features/home/data/models/book_by_category_response_model.dart';
import 'package:ebook_app/features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/routes.dart';
import 'book_by_category_shimmer_loading_item.dart';
import 'category_response_list_view_item.dart';

class CategoryResponseListView extends StatefulWidget {
  final List<BookItemsByCategory?> booksItemsByCategory;

  const CategoryResponseListView(
      {super.key, required this.booksItemsByCategory});

  @override
  State<CategoryResponseListView> createState() =>
      _CategoryResponseListViewState();
}

class _CategoryResponseListViewState extends State<CategoryResponseListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.h,
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification.metrics.pixels ==
                  notification.metrics.maxScrollExtent &&
              notification is ScrollUpdateNotification) {
            SharedPrefHelper.getString(SharedPrefKeys.saveCategory.toString())
                .then((category) {
              HomeCubit cubit = BlocProvider.of(context);
              cubit.getBooksListByCategory(
                  category: category, fromPagination: true);
            });
          }
          return true;
        },
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.booksItemsByCategory.length + 1,
          itemBuilder: (context, index) {
            if (index < widget.booksItemsByCategory.length) {
              return GestureDetector(
                onTap: () {
                  log("Book ID: ${widget.booksItemsByCategory[index]?.id}");
                  Navigator.pushNamed(
                    context,
                    Routes.detailsScreen,
                    arguments: widget.booksItemsByCategory[index]?.id,
                  );
                },
                child: CategoryResponseListViewItem(
                  itemIndex: index,
                  bookItemsByCategory: widget.booksItemsByCategory[index],
                ),
              );
            } else {
              return BookByCategoryShimmerLoadingItem();
            }
          },
        ),
      ),
    );
  }
}
