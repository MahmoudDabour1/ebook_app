import 'package:ebook_app/features/search/ui/widgets/search_response_list_view.dart';
import 'package:ebook_app/features/search/ui/widgets/search_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../logic/search_cubit.dart';
import '../../logic/search_state.dart';

class SearchBooksBlocBuilder extends StatelessWidget {
  const SearchBooksBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
        buildWhen: (previous, current) =>
            current is SearchLoading ||
            current is SearchSuccess ||
            current is SearchError ||
            current is  !SearchLoadingPagination,
        builder: (context, state) {
          return state.maybeWhen(
            searchSuccess: (searchResponseModel) {
              var searchList = searchResponseModel;
              if (searchList == null || searchList.isEmpty) {
                return Center(child: Lottie.asset("assets/jsons/search_empty.json")); // You can customize this message
              }
              return setupSuccess(searchList);
            },
            searchLoading: () => setupLoading(),
            searchError: (errorHandler) => setupError(),
            searchLoadingPagination: () => setupPaginationLoading(),
            orElse: () => const SizedBox.shrink(),
          );
        });
  }

  Widget setupSuccess(searchList) {
    return SearchResponseListView(
      searchList: searchList ?? [],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }

  Widget setupLoading() {
    return SearchShimmerLoading();
  }

  Widget setupPaginationLoading() {
    return Center(
      child:
          SizedBox(height: 50, width: 50, child: CircularProgressIndicator()),
    );
  }
}
