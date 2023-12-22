import 'package:auto_route/auto_route.dart';
import 'package:eco_market/data/network/product_category_api.dart';
import 'package:eco_market/feature/presenation/theme/app_colors.dart';
import 'package:eco_market/feature/presenation/theme/app_fonts.dart';
import 'package:eco_market/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

@RoutePage()
class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key,required this.data,});

  final List<ProductCategoryMotelItem> data;

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {

  bool isSelected = true;
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
                    hintStyle: AppFonts.s16w400
                        .copyWith(color: const Color(0xffD2D1D5)),
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
                    itemCount: widget.data.map((e) => e.name).toList().length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 8),
                        child: ChoiceChip(
                          side: const BorderSide(color: AppColors.grey),
                          backgroundColor: Colors.white,
                          selectedColor: AppColors.selectedTabItemColor,
                          label: Text(
                            widget.data.map((e) => e.name).toList()[index],
                            style: AppFonts.s16w600
                                .copyWith(color: AppColors.grey),
                          ),
                          labelStyle:
                              AppFonts.s16w600.copyWith(color: Colors.white),
                          selected: selectedIndex == index,
                          onSelected: (val) {
                            selectedIndex = index;
                            setState(() {});
                          },
                        ),
                      );
                    })),
              ),
              Container(
                width: 166.w,
                height: 228.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.lightGrey),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(Images.apple),
                      SizedBox(
                        height: 4.h,
                      ),
                      const Text(
                        "Яблоко красная радуга сладкая",
                        style: AppFonts.s14w500,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Text(
                        "56 s",
                        style: AppFonts.s20w700
                            .copyWith(color: AppColors.selectedTabItemColor),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      isSelected
                          ? SizedBox(
                              width: 158.w,
                              height: 32.h,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    isSelected = !isSelected;
                                  });
                                  Row(
                                    children: [
                                      ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50))),
                                          child: Text("-"))
                                    ],
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        AppColors.selectedTabItemColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16))),
                                child: const Text(
                                  "Добавить",
                                  style: AppFonts.s16w600,
                                ),
                              ))
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: const CircleAvatar(
                                    backgroundColor:
                                        AppColors.selectedTabItemColor,
                                    child: Icon(Icons.remove, color: AppColors.scaffoldBgColor,),
                                  ),
                                ),
                                Text("1"),
                                InkWell(
                                  onTap: () {},
                                  child: CircleAvatar(
                                    backgroundColor:
                                        AppColors.selectedTabItemColor,
                                    child: Icon(Icons.add, color: AppColors.scaffoldBgColor,),
                                  ),
                                )
                              ],
                            )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
