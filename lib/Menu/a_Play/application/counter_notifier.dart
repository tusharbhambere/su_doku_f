import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class CoundDownNotifier extends StateNotifier<int> {
  final Ref ref;
  CoundDownNotifier(this.ref) : super(0) {
    _initial();
  }
  late Timer timer;
  void _initial() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      state = state + 1;
    });
  }

  void toggleTimer(bool start) async {
    if (start) {
    } else {}
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
