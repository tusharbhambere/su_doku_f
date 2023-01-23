import 'app_theme_setting_model.dart';

abstract class AbLocalDatabase {
  void saveTheme(AppThemeSetting appThemeSetting);
  Future<AppThemeSetting> getThemeSetting();
}
