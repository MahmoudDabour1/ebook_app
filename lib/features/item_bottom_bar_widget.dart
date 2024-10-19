import 'package:ebook_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemBottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isSelected;
  final Function() onPress;

  const ItemBottomBar({
    super.key,
    required this.text,
    required this.icon,
    required this.onPress,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        radius: 20.r,
        splashColor: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        onTap: onPress,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color:
                isSelected ? ColorsManager.primaryColor : ColorsManager.darkGray,
                size:25,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color:
                isSelected ? ColorsManager.primaryColor : ColorsManager.darkGray,
                fontSize:isSelected? 14:12,
                fontWeight: isSelected
                    ? FontWeight.w500
                    : FontWeight.w200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
