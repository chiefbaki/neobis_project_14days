import 'package:eco_market/feature/presenation/widgets/cards.dart';
import 'package:eco_market/resources/resources.dart';
import 'package:flutter/material.dart';

class CardItems extends StatelessWidget {
  const CardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Cards(img: Images.categorycard1),
            Cards(
              img: Images.categorycard2,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Cards(img: Images.categorycard3),
            Cards(
              img: Images.categorycard4,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Cards(img: Images.categorycard5),
            Cards(
              img: Images.categorycard6,
            ),
          ],
        ),
      ],
    );
  }
}