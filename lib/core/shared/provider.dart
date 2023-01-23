import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../Routes/my_routes.gr.dart';

final appRouterProvider = Provider<AppRouter>((ref) {
  return AppRouter();
});
