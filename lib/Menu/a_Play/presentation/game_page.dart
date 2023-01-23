import 'dart:developer';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:su_doku_f/Menu/a_Play/presentation/widget/a_build_grid_item.dart';
import 'package:su_doku_f/Menu/a_Play/presentation/widget/b_build_number_row.dart';
import 'package:su_doku_f/Menu/a_Play/shared/provider.dart';
import 'package:su_doku_f/core/Theme/themed.dart';
import 'package:su_doku_f/core/apllication/theme_notifier.dart';

class SudokuGamePage extends StatefulHookConsumerWidget {
  final int difficulty;
  const SudokuGamePage({super.key, required this.difficulty});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SudokuGamePageState();
}

class _SudokuGamePageState extends ConsumerState<SudokuGamePage>
    with TickerProviderStateMixin {
  late List<AnimationController> _scaleAnimationControllers;
  late List<Animation<double>> _scaleAnimations;
  late AnimationController _noAnimationController;
  late Animation<double> _noAnimation;

  @override
  void initState() {
    super.initState();
    _scaleAnimationControllers = List.generate(9 * 9, (index) {
      return AnimationController(
        duration: const Duration(milliseconds: 500),
        reverseDuration: const Duration(milliseconds: 200),
        vsync: this,
      );
    });
    _scaleAnimations = List.generate(9 * 9, (index) {
      return CurvedAnimation(
          parent: _scaleAnimationControllers[index],
          curve: Curves.fastLinearToSlowEaseIn);
    });

    _noAnimationController = AnimationController(vsync: this, value: 1);
    _noAnimation =
        CurvedAnimation(parent: _noAnimationController, curve: Curves.linear);
  }

  @override
  void dispose() {
    for (int i = 0; i < _scaleAnimationControllers.length; i++) {
      _scaleAnimationControllers[i].dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const int boardLength = 9;
    final sudoku = ref.watch(sudokoProvider(_scaleAnimationControllers));
    log('rebuilding');
    return AppTheme(
      data: ref.watch(themeManagerProvider).themeData,
      child: SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            Consumer(builder: (context, ref, child) {
              final countDown = ref.watch(coundDownProvider);

              return Text('$countDown sec');
            }),
            Expanded(
                child: Column(children: [
              AspectRatio(
                aspectRatio: 1.0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                  margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: boardLength,
                    ),
                    itemBuilder: (context, index) {
                      return BuildGridItem(
                        scaleAnimationControllers: _scaleAnimationControllers,
                        index: index,
                        cell: sudoku,
                        scaleAnimation: _scaleAnimations,
                        noAnimation: _noAnimation,
                      );
                    },
                    itemCount: boardLength * boardLength,
                    primary: true, // disable scrolling
                    physics: const NeverScrollableScrollPhysics(),
                  ),
                ),
              ),
            ])),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Flexible(
                    flex: 1,
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                      ),
                      itemBuilder: (context, index) {
                        return BuildNumberRow(
                          scaleAnimationControllers: _scaleAnimationControllers,
                          index: index,
                          cellModel: sudoku,
                        );
                      },
                      itemCount: 10,
                      primary: true, // disable scrolling
                      physics: const NeverScrollableScrollPhysics(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
