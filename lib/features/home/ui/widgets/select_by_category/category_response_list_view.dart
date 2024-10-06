import 'dart:developer';

import 'package:ebook_app/features/home/data/models/book_by_category_response_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/routes.dart';
import 'category_response_list_view_item.dart';

class CategoryResponseListView extends StatefulWidget {
  final List<BookItemsByCategory?> booksItemsByCategory;

  const CategoryResponseListView({super.key, required this.booksItemsByCategory});

  @override
  State<CategoryResponseListView> createState() => _CategoryResponseListViewState();
}

class _CategoryResponseListViewState extends State<CategoryResponseListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.booksItemsByCategory.length,
          itemBuilder: (context, index) {
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
          }),
    );
  }
}
