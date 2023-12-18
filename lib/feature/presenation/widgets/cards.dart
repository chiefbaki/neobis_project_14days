import 'package:eco_market/feature/presenation/screens/tab_router_screens/products_screeen.dart';
import 'package:eco_market/feature/presenation/theme/app_colors.dart';
import 'package:eco_market/feature/presenation/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cards extends StatelessWidget {
  final String img;
  final String text;
  const Cards({super.key, required this.img, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProductsScreen()));
        },
        child: Container(
          width: 166.w,
          height: 182.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    const Color(0xff000000).withOpacity(0.3),
                    Colors.black,
                  ]),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  text,
                  style: AppFonts.s20w700
                      .copyWith(color: AppColors.scaffoldBgColor),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
