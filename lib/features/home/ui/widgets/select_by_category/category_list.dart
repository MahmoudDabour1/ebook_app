import 'package:ebook_app/features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/app_constants.dart';
import '../../../../../core/helpers/constants.dart';
import '../../../../../core/helpers/shared_pref_helper.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';
import 'category_list_item.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select by Category",
          style: AppTextStyles.font18DarkBlueBold,
        ),
        verticalSpace(16),
        SizedBox(
          height: 45.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: AppConstants.selectByCategory.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                EdgeInsetsDirectional.only(start: index == 0 ? 0 : 8.w),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectCategoryIndex = index;
                    });
                    SharedPrefHelper.setData(SharedPrefKeys.saveCategory, AppConstants.selectByCategory[index].toString());
                    context.read<HomeCubit>().getBooksListByCategory(
                        category: AppConstants.selectByCategory[index]);
                  },
                  child: CategoryListItem(
                    index: index,
                    selectedIndex: selectCategoryIndex,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
