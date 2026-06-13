import 'package:flutter/material.dart';
import 'product_card.dart';
import '../../../core/constants/product_data.dart';

class ListviewForCard extends StatelessWidget {
  const ListviewForCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: Product.products.length,
        itemBuilder: (context, index) =>
            ProductCard(product: Product.products[index]),
        separatorBuilder: (context, index) => SizedBox(width: 20),
      ),
    );
  }
}
