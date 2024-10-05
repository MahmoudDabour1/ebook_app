import 'package:ebook_app/core/helpers/spacing.dart';
import 'package:ebook_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

import 'books_best_seller_bloc_builder.dart';


class BooksBestSeller extends StatelessWidget {
  const BooksBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Best Seller",
          style: AppTextStyles.font18DarkBlueBold,
        ),
        verticalSpace(16),
        const BooksBestSellerBlocBuilder(),
        // Add your code here
      ],
    );
  }
}