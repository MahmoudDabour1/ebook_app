import 'package:ebook_app/features/details_screen/data/models/book_details_response_model.dart';
import 'package:ebook_app/features/favorite/logic/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/helper_methods.dart';
import '../../../../core/theming/logic/app_theme_cubit.dart';
import '../../../../core/theming/logic/app_theme_state.dart';
import '../../../favorite/logic/favorite_state.dart';

class BookDetailsHeartButton extends StatelessWidget {
  final BookDetailsResponseModel book;

  const BookDetailsHeartButton({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return BlocBuilder<FavoriteCubit, FavoriteState>(
      builder: (context, state) {
        final isFavorite = state.maybeWhen(
          favoriteLoadedSuccessfully: (books) => books.any(
            (b) => b.id == book.id,
          ),
          orElse: () => false,
        );

        return GestureDetector(
          onTap: () {
            if (isFavorite) {
              showToast("Added to removed successfully", isDarkTheme);
              context.read<FavoriteCubit>().removeFavorite(book.id.toString());
            } else {
              showToast("Added to favorites successfully", isDarkTheme);
              context.read<FavoriteCubit>().addFavorite(book);
            }
          },
          child: Center(
            child: Container(
              width: 60.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  "assets/svgs/heart_dark_blue.svg",
                  color: isFavorite ? Colors.red : null,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
