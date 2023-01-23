import 'package:auto_route/auto_route.dart';
import 'package:su_doku_f/Menu/a_Play/presentation/game_page.dart';
import 'package:su_doku_f/Menu/c_Settings/setting_page.dart';
import 'package:su_doku_f/Menu/menu_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
        transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
        durationInMilliseconds: 300,
        page: MenuPage,
        initial: true),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 300,
      page: SudokuGamePage,
    ),
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
      durationInMilliseconds: 300,
      page: SettingPage,
    ),
  ],
)
class $AppRouter {}
