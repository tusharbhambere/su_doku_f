import 'package:isar/isar.dart';
import 'package:su_doku_f/core/Constant/app_constant.dart';
import 'package:su_doku_f/core/Constant/app_theme_color_constant.dart';
import 'package:su_doku_f/core/Theme/themed.dart';
part 'app_theme_setting_model.g.dart';

@collection
class AppThemeSetting {
  AppThemeSetting({
    required this.id,
    required this.colorIndex,
    required this.varientIndex,
  });
  final Id id;
  final int colorIndex;
  final int varientIndex;
  @ignore
  AppThemeData get themeData {
    final variants = AppThemeVariants(AppColors.allSwatches[colorIndex]);
    return variants.themes[varientIndex];
  }

  AppThemeSetting copyWith({
    int? colorIndex,
    int? varientIndex,
  }) {
    return AppThemeSetting(
      id: AppConstant.theme,
      colorIndex: colorIndex ?? this.colorIndex,
      varientIndex: varientIndex ?? this.varientIndex,
    );
  }
}
