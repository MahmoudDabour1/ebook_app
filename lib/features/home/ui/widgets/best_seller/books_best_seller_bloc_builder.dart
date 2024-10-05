import 'package:ebook_app/features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/home_state.dart';
import 'best_seller_shimmer_loading.dart';
import 'books_best_seller_list.dart';

class BooksBestSellerBlocBuilder extends StatelessWidget {
  const BooksBestSellerBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            current is BestSellerSuccess ||
            current is BestSellerError ||
            current is BestSellerLoading,
        builder: (context, state) {
          return state.maybeWhen(
            bestSellerSuccess: (bestSellerDataList) {
              var bestSellerList = bestSellerDataList;
              return setupSuccess(bestSellerList);
            },
            bestSellerError: (errorHandler) {
              return setupError();
            },
            bestSellerLoading: () {
              return setupLoading(context);
            },
            orElse: () => const SizedBox.shrink(),
          );
        });
  }

  Widget setupSuccess(bestSellerList) {
    return BooksBestSellerList(
      bestSellerBooks: bestSellerList ?? [],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }

  Widget setupLoading(BuildContext context) {
    return BestSellerShimmerLoading();
  }
}
