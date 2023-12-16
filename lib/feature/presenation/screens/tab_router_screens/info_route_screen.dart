import 'package:auto_route/auto_route.dart';
import 'package:eco_market/feature/presenation/theme/app_colors.dart';
import 'package:eco_market/feature/presenation/theme/app_fonts.dart';
import 'package:eco_market/feature/presenation/widgets/info_btn.dart';
import 'package:eco_market/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

@RoutePage()
class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              width: 450,
              height: 310,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(Images.infoImage))),
            ),
            Positioned(
                top: 65,
                left: 190,
                child: Text(
                  "Инфо",
                  style: AppFonts.s18w500
                      .copyWith(color: AppColors.scaffoldBgColor),
                ))
          ]),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Эко Маркет", style: AppFonts.s24w700),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        width: 343.w,
                        child: Text(
                          """Фрукты, овощи, зелень, сухофрукты а так же сделанные из натуральных ЭКО продуктов (варенье, салаты, соления, компоты и т.д.) можете заказать удобно, качественно и по доступной цене.\nГотовы сотрудничать взаимовыгодно с магазинами.\nНаши цены как на рынке.\nМы заинтересованы в экономии ваших денег и времени.\nСтоимость доставки 150 сом и ещё добавлен для окраину города.\nПри отказе подтвержденного заказа более\n2-х раз Клиент заносится в чёрный список!!""",
                          style: AppFonts.s16w400
                              .copyWith(color: AppColors.darkGrey),
                        ),
                      ),
                      SizedBox(
                        height: 33.h,
                      ),
                      InfoBtn(
                        btnText: "Позвонить",
                        icon: Images.phone,
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      InfoBtn(
                        btnText: "WhatsApp",
                        icon: Images.whatsapp,
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      InfoBtn(
                        btnText: "Instagram",
                        icon: Images.instagram,
                        onPressed: () {},
                      ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
