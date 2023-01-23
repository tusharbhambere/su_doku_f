import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:su_doku_f/Menu/widget/commen_button.dart';
import 'package:su_doku_f/core/Routes/my_routes.gr.dart';
import 'package:su_doku_f/core/Theme/themed.dart';
import 'package:su_doku_f/core/apllication/theme_notifier.dart';

class MenuPage extends HookConsumerWidget {
  const MenuPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppTheme(
      data: ref.watch(themeManagerProvider).themeData,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 1.sw,
              ),
              MainButton(
                text: 'play'.tr(),
                ontap: () {
                  AutoRouter.of(context).push(SudokuGameRoute(difficulty: 1));
                },
              ),
              MainButton(
                text: 'starts'.tr(),
                ontap: () {},
              ),
              MainButton(
                text: 'settings'.tr(),
                ontap: () {
                  AutoRouter.of(context).push(const SettingRoute());
                },
              ),
              MainButton(
                text: 'help'.tr(),
                ontap: () {},
              ),
              MainButton(
                text: 'about'.tr(),
                ontap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
