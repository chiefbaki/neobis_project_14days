import 'package:auto_route/auto_route.dart';
import 'package:eco_market/feature/presenation/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
              page: ProductsRoute.page, initial: true
            ),
        AutoRoute(page: DashboardRoute.page, children: [
          
          AutoRoute(page: MainRoute.page,  children: [
            
          ]),
          AutoRoute(page: BagRoute.page),
          AutoRoute(page: HistoryRoute.page),
          AutoRoute(page: InfoRoute.page)
        ]),
      ];
}
