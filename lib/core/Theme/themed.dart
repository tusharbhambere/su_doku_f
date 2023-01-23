import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:su_doku_f/core/Constant/app_theme_color_constant.dart';

class AppThemeData {
  final Color primary;
  final Color secondary;
  final Color accent;
  final Color accentNegative;
  final SystemUiOverlayStyle overlayStyle;

  AppThemeData({
    required this.primary,
    required this.secondary,
    required this.accent,
    required this.accentNegative,
    required this.overlayStyle,
  });

  static AppThemeData lerp(AppThemeData a, AppThemeData b, double t) {
    final overlayStyle = t < 0.5 ? a.overlayStyle : b.overlayStyle;
    return AppThemeData(
      primary: Color.lerp(a.primary, b.primary, t)!,
      secondary: Color.lerp(a.secondary, b.secondary, t)!,
      accent: Color.lerp(a.accent, b.accent, t)!,
      accentNegative: Color.lerp(a.accentNegative, b.accentNegative, t)!,
      overlayStyle: overlayStyle,
    );
  }
}

// Class for reading AppThemeData via InheritedWidget
class AppTheme extends InheritedWidget {
  const AppTheme({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  final AppThemeData data;

  static AppThemeData of(BuildContext context) {
    final theme = context.dependOnInheritedWidgetOfExactType<AppTheme>();
    if (theme != null) {
      return theme.data;
    } else {
      throw StateError('Could not find ancestor widget of type `AppTheme`');
    }
  }

  @override
  bool updateShouldNotify(AppTheme oldWidget) => data != oldWidget.data;
}

class AppThemeVariants {
  AppThemeVariants(List<Color> swatch)
      : themes = [
          AppThemeData(
            primary: swatch[0],
            secondary: swatch[1],
            accent: AppColors.white,
            accentNegative: AppColors.black,
            overlayStyle: SystemUiOverlayStyle.light,
          ),
          AppThemeData(
            primary: AppColors.white,
            secondary: AppColors.lightestGrey,
            accent: swatch[0],
            accentNegative: AppColors.white,
            overlayStyle: SystemUiOverlayStyle.dark,
          ),
          AppThemeData(
            primary: AppColors.black,
            secondary: AppColors.darkestGrey,
            accent: swatch[0],
            accentNegative: AppColors.white,
            overlayStyle: SystemUiOverlayStyle.light,
          ),
        ];

  final List<AppThemeData> themes;
}
