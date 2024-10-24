import 'package:ebook_app/features/details_screen/data/models/book_details_response_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import 'favorite_list_view_item.dart';

class FavoriteListView extends StatelessWidget {
  final List<BookDetailsResponseModel> favoriteBooks;

  const FavoriteListView({super.key, required this.favoriteBooks});

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        padding: EdgeInsets.all(16.0.h),
      itemCount: favoriteBooks.length,
        itemBuilder: (context, index) {
          final book = favoriteBooks[index];
          return GestureDetector(
              onTap: (){
                Navigator.pushNamed(
                  context,
                  Routes.detailsScreen,
                  arguments: favoriteBooks[index].id,
                );
              },
              child: FavoriteListViewItem(favoriteBooks: book));
        });
  }
}
