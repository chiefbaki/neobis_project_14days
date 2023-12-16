import 'package:auto_route/auto_route.dart';
import 'package:eco_market/feature/presenation/routes/app_router.gr.dart';
import 'package:eco_market/feature/presenation/theme/app_colors.dart';
import 'package:eco_market/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool isSelected = false;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        MainRoute(),
        BagRoute(),
        HistoryRoute(),
        InfoRoute(),
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
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: AppColors.unselectedTabItemColor,
              selectedItemColor: AppColors.selectedTabItemColor,
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
                tabsRouter.setActiveIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                    label: 'Главное',
                    icon: SvgPicture.asset(
                      Images.home,
                      colorFilter: _currentIndex == 0
                          ? const ColorFilter.mode(
                              AppColors.selectedTabItemColor, BlendMode.srcIn)
                          : const ColorFilter.mode(
                              AppColors.unselectedTabItemColor,
                              BlendMode.srcIn),
                    )),
                BottomNavigationBarItem(
                  label: 'Корзина',
                  icon: SvgPicture.asset(
                    Images.bag,
                    colorFilter: _currentIndex == 1
                        ? const ColorFilter.mode(
                            AppColors.selectedTabItemColor, BlendMode.srcIn)
                        : const ColorFilter.mode(
                            AppColors.unselectedTabItemColor, BlendMode.srcIn),
                  ),
                ),
                BottomNavigationBarItem(
                    label: 'История',
                    icon: SvgPicture.asset(
                      Images.clock,
                      colorFilter: _currentIndex == 2
                          ? const ColorFilter.mode(
                              AppColors.selectedTabItemColor, BlendMode.srcIn)
                          : const ColorFilter.mode(
                              AppColors.unselectedTabItemColor,
                              BlendMode.srcIn),
                    )),
                BottomNavigationBarItem(
                    label: 'Инфо',
                    icon: SvgPicture.asset(
                      Images.helpSquare,
                      colorFilter: _currentIndex == 3
                          ? const ColorFilter.mode(
                              AppColors.selectedTabItemColor, BlendMode.srcIn)
                          : const ColorFilter.mode(
                              AppColors.unselectedTabItemColor,
                              BlendMode.srcIn),
                    )),
              ],
            ));
      },
    );
  }

  bool isSelectedIcon(bool isSelected) {
    isSelected
        ? const ColorFilter.mode(
            AppColors.selectedTabItemColor, BlendMode.srcIn)
        : const ColorFilter.mode(
            AppColors.unselectedTabItemColor, BlendMode.srcIn);

    return isSelected;
  }
}
