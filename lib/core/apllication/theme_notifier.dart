import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:su_doku_f/core/LocalDatabase/Domain/app_theme_setting_model.dart';
import 'package:su_doku_f/core/LocalDatabase/shared/provider.dart';

class AppThemeManager extends StateNotifier<AppThemeSetting> {
  final Ref ref;
  final AppThemeSetting appThemeSetting;
  AppThemeManager({
    required this.ref,
    required this.appThemeSetting,
  }) : super(appThemeSetting);

  void updateColorIndex(int colorIndex) {
    state = state.copyWith(colorIndex: colorIndex);
    final data = ref.read(localDatabaseProvider);
    data.saveTheme(state);
  }

  void updateVariantIndex(int variantIndex) {
    state = state.copyWith(varientIndex: variantIndex);
    final data = ref.read(localDatabaseProvider);
    data.saveTheme(state);
  }
}

final themeManagerProvider =
    StateNotifierProvider<AppThemeManager, AppThemeSetting>((ref) {
  throw UnimplementedError();
});
