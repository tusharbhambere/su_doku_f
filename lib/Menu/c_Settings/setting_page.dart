import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:su_doku_f/Menu/widget/commen_button.dart';
import 'package:su_doku_f/core/Theme/themed.dart';
import 'package:su_doku_f/core/apllication/theme_notifier.dart';

class SettingPage extends HookConsumerWidget {
  const SettingPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themed = ref.watch(themeManagerProvider);
    return AppTheme(
      data: themed.themeData,
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            MainButton(
              text: 'chaneg theme',
              ontap: () {
                log(themed.varientIndex.toString());
                if (themed.varientIndex == 0) {
                  ref.read(themeManagerProvider.notifier).updateVariantIndex(1);
                } else if (themed.varientIndex == 1) {
                  ref.read(themeManagerProvider.notifier).updateVariantIndex(2);
                } else if (themed.varientIndex == 2) {
                  ref.read(themeManagerProvider.notifier).updateVariantIndex(0);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
