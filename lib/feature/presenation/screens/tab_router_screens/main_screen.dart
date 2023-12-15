import 'package:auto_route/auto_route.dart';
import 'package:eco_market/feature/presenation/theme/app_colors.dart';
import 'package:eco_market/feature/presenation/theme/app_fonts.dart';
import 'package:eco_market/feature/presenation/widgets/card_items.dart';
import 'package:eco_market/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Эко Маркет",
            style: AppFonts.s24w700.copyWith(color: AppColors.fontBlack),
          ),
        ),
        body: Column(
          children: [
            CardItems()
          ],
        ));
  }
}


