// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:eco_market/feature/presenation/screens/tab_router_screens/products_screeen.dart'
    as _i6;
import 'package:eco_market/feature/presenation/screens/router_tab.dart' as _i2;
import 'package:eco_market/feature/presenation/screens/tab_router_screens/bag_screen.dart'
    as _i1;
import 'package:eco_market/feature/presenation/screens/tab_router_screens/history_route_screen.dart'
    as _i3;
import 'package:eco_market/feature/presenation/screens/tab_router_screens/info_route_screen.dart'
    as _i4;
import 'package:eco_market/feature/presenation/screens/tab_router_screens/main_screen.dart'
    as _i5;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    BagRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BagScreen(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashboardPage(),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HistoryScreen(),
      );
    },
    InfoRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.InfoScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainScreen(),
      );
    },
    ProductsRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ProductsScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.BagScreen]
class BagRoute extends _i7.PageRouteInfo<void> {
  const BagRoute({List<_i7.PageRouteInfo>? children})
      : super(
          BagRoute.name,
          initialChildren: children,
        );

  static const String name = 'BagRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i7.PageRouteInfo<void> {
  const DashboardRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HistoryScreen]
class HistoryRoute extends _i7.PageRouteInfo<void> {
  const HistoryRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.InfoScreen]
class InfoRoute extends _i7.PageRouteInfo<void> {
  const InfoRoute({List<_i7.PageRouteInfo>? children})
      : super(
          InfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'InfoRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainScreen]
class MainRoute extends _i7.PageRouteInfo<void> {
  const MainRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProductsScreen]
class ProductsRoute extends _i7.PageRouteInfo<void> {
  const ProductsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ProductsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
