import 'dart:developer';

import 'package:ebook_app/core/routing/routes.dart';
import 'package:ebook_app/features/home/ui/widgets/best_seller/best_seller_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/home_books_response_model.dart';
import '../../../logic/home_cubit.dart';
import 'best_seller_shimmer_loading_item.dart';
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
    scroll.addListener(
      () {
        if (scroll.position.maxScrollExtent == scroll.offset) {
          HomeCubit cubit = BlocProvider.of(context);
          cubit.getBestSellerList(fromPagination: true);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: scroll,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 1 / 1.8,
      ),
      itemCount: widget.bestSellerBooks.length + 2,
      itemBuilder: (context, index) {
        if (index < widget.bestSellerBooks.length) {
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
        } else {
          return BestSellerShimmerLoadingItem();
        }
      },
    );
  }
}
