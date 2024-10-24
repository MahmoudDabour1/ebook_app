
import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_theme_state.freezed.dart';
@freezed
 class AppThemeState with _$AppThemeState {
  const factory AppThemeState.initial() = AppThemeInitial;
  const factory AppThemeState.light() = AppThemeLight;
  const factory AppThemeState.dark() = AppThemeDark;
}
