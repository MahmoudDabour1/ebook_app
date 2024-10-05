import 'package:ebook_app/core/helpers/spacing.dart';
import 'package:ebook_app/features/details_screen/data/models/book_details_response_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class BookDetailsDescription extends StatelessWidget {
  final BookDetailsResponseModel? bookDetailsResponseModel;
  const BookDetailsDescription({super.key, required this.bookDetailsResponseModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description",
            style: AppTextStyles.font18DarkBlueBold,
          ),
          verticalSpace(8),
          Text(
            bookDetailsResponseModel?.volumeInfo?.description??"Description",
            style: AppTextStyles.font18DarkBlueBold,
          ),
        ],
      ),
    );
  }
}