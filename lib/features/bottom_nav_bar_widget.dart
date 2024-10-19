import 'package:ebook_app/core/theming/colors.dart';
import 'package:ebook_app/features/home/ui/home_screen.dart';
import 'package:ebook_app/features/search/ui/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'item_bottom_bar_widget.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int currentIndex = 0;

  List<String> title = ['Home', 'Search'];

  List<IconData> icons = [Icons.home, Icons.search];

  final pages = [const HomeScreen(), const SearchScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBody: true,
      backgroundColor: ColorsManager.darkBlue,
      primary: true,
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: SizedBox(
        height: 72.h,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.r),
            topRight: Radius.circular(40.r),
          ),
          child: BottomAppBar(
            color: ColorsManager.darkBlue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                title.length,
                (index) => ItemBottomBar(
                  isSelected: index == currentIndex,
                  text: title[index],
                  icon: icons[index],
                  onPress: () {
                    currentIndex = index;
                    setState(() {});
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
