import 'package:ebook_app/core/helpers/shared_pref_helper.dart';
import 'package:ebook_app/core/helpers/shared_pref_keys.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../helpers/theme_enums.dart';
import 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(const AppThemeState.initial());

  void changeTheme(ThemeEnums state) async {
    switch (state) {
      case ThemeEnums.light:
        await SharedPrefHelper.setData(
            SharedPrefKeys.themeModeKey, ThemeEnums.light.toString());
        emit(const AppThemeState.light());
        break;
      case ThemeEnums.dark:
        await SharedPrefHelper.setData(
            SharedPrefKeys.themeModeKey, ThemeEnums.dark.toString());
        emit(const AppThemeState.dark());
        break;
      case ThemeEnums.initial:
        final theme =
            await SharedPrefHelper.getString(SharedPrefKeys.themeModeKey);
        if (theme != null) {
          if (theme == ThemeEnums.light.toString()) {
            emit(const AppThemeState.light());
          } else {
            emit(const AppThemeState.dark());
          }
        }
        break;
    }
  }
}
