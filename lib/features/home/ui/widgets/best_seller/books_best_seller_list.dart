import 'dart:developer';

import 'package:ebook_app/core/routing/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/home_books_response_model.dart';
import '../../../logic/home_cubit.dart';
import 'books_best_seller_item.dart';

class BooksBestSellerList extends StatefulWidget {
  final List<BookItems?> bestSellerBooks;

  const BooksBestSellerList({super.key, required this.bestSellerBooks});

  @override
  State<BooksBestSellerList> createState() => _BooksBestSellerListState();
}

class _BooksBestSellerListState extends State<BooksBestSellerList> {
  ScrollController scroll = ScrollController();

  @override
  void initState() {
    super.initState();
    scroll.addListener(() {
      if (scroll.position.maxScrollExtent ==
          scroll.offset ) {
        HomeCubit cubit = BlocProvider.of(context);
        cubit.getBestSellerList(fromPagination: true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      // NotificationListener<ScrollNotification>(
      // onNotification: (notification) {
      //   print(notification);
      //   if (notification.metrics.pixels >=
      //           notification.metrics.maxScrollExtent - 200 &&
      //       notification is ScrollUpdateNotification) {
      //     print("Load More");
      //     HomeCubit cubit = BlocProvider.of(context);
      //     cubit.getBestSellerList(fromPagination: true);
      //   }
      //   return true;
      // },
      // child:
      GridView.builder(
        shrinkWrap: true,
        controller: scroll,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.w,
          mainAxisSpacing: 16.h,
          childAspectRatio: 1 / 1.8,
        ),
        itemCount: widget.bestSellerBooks.length,
        itemBuilder: (context, index) {
          return GestureDetector(
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
          );
        },
      );
  }
}
