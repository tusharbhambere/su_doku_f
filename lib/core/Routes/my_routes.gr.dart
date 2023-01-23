// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../Menu/a_Play/presentation/game_page.dart' as _i2;
import '../../Menu/c_Settings/setting_page.dart' as _i3;
import '../../Menu/menu_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MenuRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.MenuPage(),
        transitionsBuilder: _i4.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SudokuGameRoute.name: (routeData) {
      final args = routeData.argsAs<SudokuGameRouteArgs>();
      return _i4.CustomPage<dynamic>(
        routeData: routeData,
        child: _i2.SudokuGamePage(
          key: args.key,
          difficulty: args.difficulty,
        ),
        transitionsBuilder: _i4.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SettingRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.SettingPage(),
        transitionsBuilder: _i4.TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          MenuRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          SudokuGameRoute.name,
          path: '/sudoku-game-page',
        ),
        _i4.RouteConfig(
          SettingRoute.name,
          path: '/setting-page',
        ),
      ];
}

/// generated route for
/// [_i1.MenuPage]
class MenuRoute extends _i4.PageRouteInfo<void> {
  const MenuRoute()
      : super(
          MenuRoute.name,
          path: '/',
        );

  static const String name = 'MenuRoute';
}

/// generated route for
/// [_i2.SudokuGamePage]
class SudokuGameRoute extends _i4.PageRouteInfo<SudokuGameRouteArgs> {
  SudokuGameRoute({
    _i5.Key? key,
    required int difficulty,
  }) : super(
          SudokuGameRoute.name,
          path: '/sudoku-game-page',
          args: SudokuGameRouteArgs(
            key: key,
            difficulty: difficulty,
          ),
        );

  static const String name = 'SudokuGameRoute';
}

class SudokuGameRouteArgs {
  const SudokuGameRouteArgs({
    this.key,
    required this.difficulty,
  });

  final _i5.Key? key;

  final int difficulty;

  @override
  String toString() {
    return 'SudokuGameRouteArgs{key: $key, difficulty: $difficulty}';
  }
}

/// generated route for
/// [_i3.SettingPage]
class SettingRoute extends _i4.PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: '/setting-page',
        );

  static const String name = 'SettingRoute';
}
