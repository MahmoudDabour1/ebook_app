import 'dart:developer';

import 'package:ebook_app/core/routing/app_router.dart';
import 'package:ebook_app/core/routing/routes.dart';
import 'package:ebook_app/features/details_screen/logic/book_details_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/home_books_response_model.dart';
import 'books_best_seller_item.dart';

class BooksBestSellerList extends StatefulWidget {
  final List<BookItems?> bestSellerBooks;

  const BooksBestSellerList({super.key, required this.bestSellerBooks});

  @override
  State<BooksBestSellerList> createState() => _BooksBestSellerListState();
}

class _BooksBestSellerListState extends State<BooksBestSellerList> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: 16.w,
      mainAxisSpacing: 16.h,
      childAspectRatio: 1 / 1.8,
      children: List.generate(
        widget.bestSellerBooks.length ?? 10,
        (index) => GestureDetector(
          onTap: () {
          log("Book ID: ${widget.bestSellerBooks[index]?.id}");
          Navigator.pushNamed(
            context,
            Routes.detailsScreen,
            arguments: widget.bestSellerBooks[index]?.id,
          );
           },
          child: BooksBestSellerItem(
            bookItems: widget.bestSellerBooks[index],
          ),
        ),
      ),
    );
  }
}

