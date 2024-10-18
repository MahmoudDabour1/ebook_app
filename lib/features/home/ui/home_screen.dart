import 'package:ebook_app/core/helpers/extensions.dart';
import 'package:ebook_app/core/helpers/spacing.dart';
import 'package:ebook_app/core/routing/routes.dart';
import 'package:ebook_app/core/widgets/search_bar_widget.dart';
import 'package:ebook_app/features/home/logic/home_cubit.dart';
import 'package:ebook_app/features/home/ui/widgets/best_seller/books_best_seller.dart';
import 'package:ebook_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:ebook_app/features/home/ui/widgets/select_by_category/books_by_category_bloc_builder.dart';
import 'package:ebook_app/features/home/ui/widgets/select_by_category/category_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeCubit>().getBooksListByCategory(category: "All");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(
            20.0.w,
            20.0.h,
            20.0.w,
            28.0.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              verticalSpace(16),
              GestureDetector(
                onTap: () {
                  context.pushNamed(
                    Routes.searchScreen,
                  );
                },
                child: SearchBarWidget(
                  enabled: false,
                ),
              ),
              verticalSpace(24),
              CategoryList(),
              verticalSpace(16),
              BooksByCategoryBlocBuilder(),
              verticalSpace(24),
              Expanded(child: BooksBestSeller()),
            ],
          ),
        ),
      ),
    );
  }
}
