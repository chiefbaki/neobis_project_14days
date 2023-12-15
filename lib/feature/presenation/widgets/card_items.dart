import 'package:eco_market/data/network/product_category_api.dart';
import 'package:eco_market/feature/presenation/widgets/cards.dart';
import 'package:eco_market/resources/resources.dart';
import 'package:flutter/material.dart';

class CardItems extends StatelessWidget {
  const CardItems({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductCategoryMotelItem> items = ProductCategoryItems.items;
    return GridView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => Cards(img: items[index].image, text: items[index].name,),
    );
  }
}
