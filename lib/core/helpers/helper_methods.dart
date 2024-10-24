import 'package:ebook_app/core/theming/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast(String message, bool isDarkTheme) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor:
          isDarkTheme ? ColorsManager.white : ColorsManager.darkBlue,
      textColor: isDarkTheme ? ColorsManager.darkBlue : ColorsManager.white,
      fontSize: 16.0);
}
