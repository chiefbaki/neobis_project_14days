import 'package:auto_route/auto_route.dart';
import 'package:eco_market/feature/presenation/routes/app_router.gr.dart';
import 'package:eco_market/feature/presenation/screens/tab_router_screens/main_screen.dart';
import 'package:eco_market/feature/presenation/theme/app_colors.dart';
import 'package:eco_market/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        MainRoute(),
        BagRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              selectedLabelStyle: TextStyle(color: AppColors.selectedTabItemColor,),
              selectedIconTheme: const IconThemeData(color: AppColors.selectedTabItemColor),
              unselectedIconTheme: const IconThemeData(color: AppColors.unselectedTabItemColor),
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                // here we switch between tabs
                tabsRouter.setActiveIndex(index);
              },
              items:[
                BottomNavigationBarItem(
                    label: 'Главное', icon: SvgPicture.asset(Images.clock)),
                BottomNavigationBarItem(
                    label: 'Корзина', icon: SvgPicture.asset(Images.bag)),
              ],
            ));
      },
    );
  }
}
