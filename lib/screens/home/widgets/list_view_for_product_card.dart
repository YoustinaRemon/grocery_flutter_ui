import 'package:flutter/material.dart';
import '../../product_details/product_details_screen.dart';
import 'product_card.dart';
import 'product_data.dart';

class ListviewProductCard extends StatelessWidget {
  const ListviewProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: Product.products.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductDetailsScreen()),
            );
          },
          child: ProductCard(product: Product.products[index]),
        ),
        separatorBuilder: (context, index) => SizedBox(width: 20),
      ),
    );
  }
}
