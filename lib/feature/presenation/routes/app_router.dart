import 'package:auto_route/auto_route.dart';
import 'package:eco_market/feature/presenation/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: DashboardRoute.page, initial: true, children: [
          AutoRoute(page: MainRoute.page, initial: true),
          AutoRoute(page: BagRoute.page),
        ]),
      ];
}