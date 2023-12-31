import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:f_test_work/app/router/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OrderRoute.page, initial: true),
        // AutoRoute(page: FirstOrderRoute.page, initial: true),
      ];
}
