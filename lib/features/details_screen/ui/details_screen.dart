import 'package:ebook_app/core/theming/colors.dart';
import 'package:ebook_app/features/details_screen/ui/widgets/book_details_bloc_builder.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lighterGray,
      body: SafeArea(
        child: SingleChildScrollView(child: BookDetailsBlocBuilder()),
      ),
    );
  }
}
