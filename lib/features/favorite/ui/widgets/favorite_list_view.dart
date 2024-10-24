import 'package:ebook_app/core/helpers/helper_methods.dart';
import 'package:ebook_app/features/details_screen/data/models/book_details_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/logic/app_theme_cubit.dart';
import '../../../../core/theming/logic/app_theme_state.dart';
import '../../logic/favorite_cubit.dart';
import 'favorite_list_view_item.dart';

class FavoriteListView extends StatefulWidget {
  final List<BookDetailsResponseModel> favoriteBooks;

  const FavoriteListView({super.key, required this.favoriteBooks});

  @override
  State<FavoriteListView> createState() => _FavoriteListViewState();
}

class _FavoriteListViewState extends State<FavoriteListView> {
  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<AppThemeCubit>();
    final isDarkTheme = themeCubit.state is AppThemeDark;
    return ListView.builder(
        padding: EdgeInsets.all(16.0.h),
        itemCount: widget.favoriteBooks.length,
        itemBuilder: (context, index) {
          final book = widget.favoriteBooks[index];
          return Dismissible(
            key: Key(book.id.toString()),
            direction: DismissDirection.endToStart,
            // Swipe from right to left
            background: Container(
              color: Colors.red, // Background color when swiping
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
            onDismissed: (direction) {
              context.read<FavoriteCubit>().removeFavorite(book.id.toString());
              showToast("Removed from removed successfully", isDarkTheme);
            },
            child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.detailsScreen,
                    arguments: widget.favoriteBooks[index].id,
                  );
                },
                child: FavoriteListViewItem(favoriteBooks: book)),
          );
        });
  }
}
