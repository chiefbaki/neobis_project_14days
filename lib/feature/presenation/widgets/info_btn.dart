import 'package:eco_market/feature/presenation/theme/app_colors.dart';
import 'package:eco_market/feature/presenation/theme/app_fonts.dart';
import 'package:eco_market/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class InfoBtn extends StatelessWidget {
  final String btnText;
  final String icon;
  final Function() onPressed;
  const InfoBtn({
    super.key,
    required this.btnText,
    required this.icon,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.lightGrey,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 17,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(icon),
              SizedBox(
                width: 8.w,
              ),
              Text(
                btnText,
                style: AppFonts.s16w600.copyWith(color: AppColors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}
