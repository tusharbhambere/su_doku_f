import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:su_doku_f/core/LocalDatabase/Domain/app_theme_setting_model.dart';
import 'package:su_doku_f/core/LocalDatabase/Infra/service_local_databse.dart';
import 'package:su_doku_f/core/LocalDatabase/shared/provider.dart';
import 'package:su_doku_f/core/shared/provider.dart';

import 'core/apllication/theme_notifier.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open([AppThemeSettingSchema], directory: dir.path);
  var container1 = ProviderContainer(overrides: [
    localDatabaseProvider.overrideWithValue(ServiceLocalDatabase(isar)),
  ]);
  final data = container1.read(localDatabaseProvider);
  final themeData = await data.getThemeSetting();
  var container2 = ProviderContainer(parent: container1, overrides: [
    themeManagerProvider.overrideWith((ref) {
      return AppThemeManager(ref: ref, appThemeSetting: themeData);
    }),
  ]);

  runApp(UncontrolledProviderScope(
      container: container2,
      child: EasyLocalization(
          path: 'assets/localization',
          saveLocale: true,
          useOnlyLangCode: true,
          supportedLocales: const [
            Locale('en'),
          ],
          fallbackLocale: const Locale('en'),
          startLocale: const Locale('en'),
          child: const MyApp())));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            routeInformationParser: router.defaultRouteParser(),
            routerDelegate: router.delegate(),
            title: 'SUDOKU',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: true,
              fontFamily: 'Helvetica Neue',
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
          );
        });
  }
}
