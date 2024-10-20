import 'package:ebook_app/features/search/ui/widgets/search_shimmer_loading_item.dart';
import 'package:flutter/material.dart';

class SearchShimmerLoading extends StatelessWidget {
  const SearchShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) {
        return SearchShimmerLoadingItem();
      },
    );
  }
}
