import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:su_doku_f/Menu/a_Play/domain/sudoku_model.dart';
import 'package:su_doku_f/Menu/a_Play/presentation/paint/painters.dart';
import 'package:su_doku_f/Menu/a_Play/shared/provider.dart';
import 'package:su_doku_f/core/Theme/themed.dart';

import 'b_build_number_row.dart';

class BuildGridItem extends HookConsumerWidget {
  final int index;
  final List<List<CellModel>> cell;
  final Animation<double> noAnimation;
  final List<Animation<double>> scaleAnimation;
  final List<AnimationController> scaleAnimationControllers;
  const BuildGridItem(
      {super.key,
      required this.index,
      required this.cell,
      required this.scaleAnimation,
      required this.scaleAnimationControllers,
      required this.noAnimation});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int boardLength = 9;
    int sectorLength = 3;
    int x, y = 0;
    x = (index % boardLength);
    y = (index / boardLength).floor();
    Border border = Border(
      right: ((x % sectorLength == sectorLength - 1) && (x != boardLength - 1))
          ? BorderSide(width: 2.0, color: Theme.of(context).primaryColor)
          : ((x == boardLength - 1)
              ? BorderSide.none
              : BorderSide(width: 1.0, color: Theme.of(context).dividerColor)),
      bottom: ((y % sectorLength == sectorLength - 1) && (y != boardLength - 1))
          ? BorderSide(width: 2.0, color: Theme.of(context).primaryColor)
          : ((y == boardLength - 1)
              ? BorderSide.none
              : BorderSide(width: 1.0, color: Theme.of(context).dividerColor)),
    );
    CellModel model = cell[y][x];
    final selectNumber = ref.watch(selectedNumberProvider);
    final animation = useState(scaleAnimationControllers[y * 9 + x]);

    return InkWell(
      onTap: () {
        CellModel celled = model;
        if (selectNumber == -1) {
          numberPressButton(
              ref, index, model.value - 1, cell, scaleAnimationControllers);
        }
        if (celled.prefill) {
          return;
        } else {
          if (selectNumber != 10) {
            if (celled.value == selectNumber) {
              ref
                  .read(sudokoProvider(scaleAnimationControllers).notifier)
                  .makeCellEmpty(
                    x,
                    y,
                  );
            } else {
              if (selectNumber != 0) {
                if (celled.markup.isEmpty ||
                    (!celled.markup.contains(selectNumber) &&
                        celled.markup.length <= 8)) {
                  ref
                      .read(sudokoProvider(scaleAnimationControllers).notifier)
                      .addValue(x, y, selectNumber, context);
                  animation.value.reset();
                  animation.value.forward();
                } else {
                  ref
                      .read(sudokoProvider(scaleAnimationControllers).notifier)
                      .removeMarkup(x, y, selectNumber);
                }
                ref.read(sudokoProvider([]).notifier).makeCellEmpty(
                      x,
                      y,
                    );
              } else {}
            }
          }
        }
      },
      child: GridTile(
        child: CustomPaint(
          foregroundPainter:
              EdgePainter(border, x != boardLength - 1, y != boardLength - 1),
          child: Center(
            child: _BuildGridItem(
                scaleAnimations: scaleAnimation,
                noAnimation: noAnimation,
                x: x,
                y: y,
                cell: model,
                selectNumber: selectNumber),
          ),
        ),
      ),
    );
  }
}

class _BuildGridItem extends HookConsumerWidget {
  final int x;
  final int y;
  final int selectNumber;
  final CellModel cell;
  final Animation<double> noAnimation;
  final List<Animation<double>> scaleAnimations;
  const _BuildGridItem(
      {required this.x,
      required this.y,
      required this.cell,
      required this.noAnimation,
      required this.scaleAnimations,
      required this.selectNumber});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Animation<double> animation = scaleAnimations[y * 9 + x];
    int val = cell.value;
    if (cell.value == 0 && cell.markup.isEmpty) {
      return const SizedBox.shrink();
    }
    Color textColor = Theme.of(context).textTheme.bodyMedium!.color!;
    Color itemColor = AppTheme.of(context).accent;
    //PREFILL
    if (cell.prefill) {
      textColor = textColor.withOpacity(0.6);
      itemColor = AppTheme.of(context).accent.withOpacity(0.6);
    }
    //!RIGHT CELL
    final highlighted = ref.watch(highLightedProvider);
    if (val == selectNumber || cell.markup.contains(selectNumber)) {
      itemColor = AppTheme.of(context).primary;
      Future.microtask(
          () => ref.read(highLightedProvider.notifier).update((state) => true));
    }
    List<String> markup = List.generate(
        cell.markup.length, (index) => cell.markup[index].toString());
    final generated = ref.watch(generatedProvider);

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(children: [
        ScaleTransition(
          scale: animation,
          alignment: Alignment.center,
          child: AnimatedContainer(
            curve: Curves.ease,
            duration: const Duration(milliseconds: 100),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
                color: itemColor, borderRadius: BorderRadius.circular(500.r)
                //more than 50% of width makes circle
                ),
            child: null,
          ),
        ),
        ScaleTransition(
          scale: generated ? noAnimation : animation,
          alignment: Alignment.center,
          child: AnimatedBuilder(
            animation: animation,
            builder: (context, child) => DefaultTextStyle(
                style: DefaultTextStyle.of(context).style.apply(
                    decoration: TextDecoration.none,
                    color: highlighted
                        ? ColorTween(
                                begin: textColor,
                                end: Theme.of(context).canvasColor)
                            .animate(animation)
                            .value!
                        : textColor),
                child: child!),
            child: Center(
              child: cell.markup.isNotEmpty
                  ? Container(
                      color: Colors.transparent,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // NQSP to preserve small text size
                              children: [
                                Text(markup.length >= 8 ? markup[7] : " "),
                                Text(markup.length >= 7 ? markup[6] : " "),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(markup.length >= 6 ? markup[5] : " "),
                                Text(markup.length >= 5 ? markup[4] : " "),
                                Text(markup.length >= 4 ? markup[3] : " "),
                                Text(markup.length >= 3 ? markup[2] : " "),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(markup.length >= 2 ? markup[1] : " "),
                                Text(markup.isNotEmpty ? markup[0] : " "),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  : SizedBox(
                      height: double.infinity,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Text(val.toString()),
                      ),
                    ),
            ),
          ),
        ),
      ]),
    );
  }
}
