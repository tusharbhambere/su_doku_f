import 'package:isar/isar.dart';
import 'package:su_doku_f/core/Constant/app_constant.dart';
import 'package:su_doku_f/core/LocalDatabase/Domain/ab_local_database.dart';
import 'package:su_doku_f/core/LocalDatabase/Domain/app_theme_setting_model.dart';

class ServiceLocalDatabase implements AbLocalDatabase {
  final Isar isar;

  ServiceLocalDatabase(this.isar);
  @override
  Future<AppThemeSetting> getThemeSetting() async {
    var data = await isar.appThemeSettings.get(AppConstant.theme);

    if (data != null) {
      return data;
    } else {
      return AppThemeSetting(
          colorIndex: 2, varientIndex: 2, id: AppConstant.theme);
    }
  }

  @override
  void saveTheme(AppThemeSetting appThemeSetting) async {
    await isar
        .writeTxn(() async => await isar.appThemeSettings.put(appThemeSetting));
  }
}
