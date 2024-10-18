import 'package:ebook_app/core/helpers/spacing.dart';
import 'package:ebook_app/core/widgets/search_bar_widget.dart';
import 'package:ebook_app/features/search/logic/search_cubit.dart';
import 'package:ebook_app/features/search/ui/widgets/search_books_bloc_builder.dart';
import 'package:ebook_app/features/search/ui/widgets/search_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchTopBar(),
              SearchBarWidget(
                onChanged: (value) {
                  context.read<SearchCubit>().searchQuery = value.toString();
                  if (value!.isEmpty) {
                    context.read<SearchCubit>().clearSearchResults();
                  } else {
                    context.read<SearchCubit>().searchBooks(query: value);
                  }
                },
              ),
              verticalSpace(24),
              Expanded(child: SearchBooksBlocBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}

// child: Wrap(
//   spacing: 8.0,
//   runSpacing: 8.0,
//   children: [
//     Chip(
//       label: Text("Dentist"),
//     ),
//     Chip(
//       label: Text("Cardiologist"),
//     ),
//     Chip(
//       label: Text("Dermatologist"),
//     ),
//     Chip(
//       label: Text("Pediatrician"),
//     ),
//     Chip(
//       label: Text("Gynecologist"),
//     ),
//     Chip(
//       label: Text("Neurologist"),
//     ),
//     Chip(
//       label: Text("Ophthalmologist"),
//     ),
//     Chip(
//       label: Text("Orthopedic"),
//     ),
//     Chip(
//       label: Text("Psychiatrist"),
//     ),
//     Chip(
//       label: Text("Urologist"),
//     ),
//   ],
// ),
