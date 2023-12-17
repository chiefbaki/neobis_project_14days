import 'package:auto_route/auto_route.dart';
import 'package:eco_market/feature/presenation/theme/app_colors.dart';
import 'package:eco_market/feature/presenation/theme/app_fonts.dart';
import 'package:eco_market/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

@RoutePage()
class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List<String> products = ["Все", "Фрукты", "Сухофрукты", "Овощи", "Зелень", "Чай кофе"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset(
                Images.chevronLeft,
                height: 24,
              )),
          title: Text(
            "Продукты",
            style: AppFonts.s18w500.copyWith(color: AppColors.fontBlack),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search_outlined,
                      color: Color(0xffD2D1D5),
                    ),
                    hintText: "Быстрый поиск",
                    hintStyle:
                        AppFonts.s16w400.copyWith(color: const Color(0xffD2D1D5)),
                    filled: true,
                    fillColor: AppColors.lightGrey,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            const BorderSide(color: AppColors.lightGrey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide:
                            const BorderSide(color: AppColors.lightGrey))),
              ), 
                 SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    child: ChoiceChip(
                      side: const BorderSide(color: AppColors.grey),
                      backgroundColor: Colors.white,
                      selectedColor: AppColors.selectedTabItemColor,
                      label: Text(products[index]),
                      labelStyle: AppFonts.s16w400.copyWith(color: AppColors.scaffoldBgColor),
                      selected: selectedIndex == index,
                      onSelected: (val) {
                        selectedIndex = index;
                        setState(() {});
                      },
                    ),
                  );
                })),
          ),
            ],
          ),
        ));
  }
}
