import 'package:ebook_app/features/search/ui/widgets/search_response_list_view_item.dart';
import 'package:ebook_app/features/search/ui/widgets/search_shimmer_loading_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../data/models/search_response_model.dart';
import '../../logic/search_cubit.dart';

class SearchResponseListView extends StatefulWidget {
  final List<SearchBookItems?> searchList;

  const SearchResponseListView({super.key, required this.searchList});

  @override
  State<SearchResponseListView> createState() => _SearchResponseListViewState();
}

class _SearchResponseListViewState extends State<SearchResponseListView> {
  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification.metrics.pixels ==
                notification.metrics.maxScrollExtent &&
            notification is ScrollUpdateNotification) {
          print("Load More");

          SearchCubit cubit = BlocProvider.of(context);
          print(cubit.searchQuery);
          cubit.searchBooks(query: cubit.searchQuery, fromPagination: true);
        }
        return true;
      },
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: widget.searchList.length + 1,
          itemBuilder: (context, index) {
            if (index < widget.searchList.length) {
              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.detailsScreen,
                    arguments: widget.searchList[index]?.id,
                  );
                },
                child: SearchResponseListViewItem(
                  searchBookItems: widget.searchList[index],
                ),
              );
            } else {
              return SearchShimmerLoadingItem();
            }
          }),
    );
  }
}
