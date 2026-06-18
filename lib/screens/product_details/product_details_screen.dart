import 'package:flutter/material.dart';
import '../../core/widgets/custom_buttom.dart';
import 'widgets/expanded_text.dart';
import 'widgets/quantity_selector.dart';
import 'widgets/product_details_header.dart';
import 'widgets/nutrition_row.dart';
import 'widgets/review_section.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const DetailsHeader(),
          const SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Naturel Red Apple',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.favorite_border, color: Colors.grey, size: 30),
                  ],
                ),

                const SizedBox(height: 5),

                const Text(
                  '1kg, Price',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF7C7C7C),
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    QuantitySelector(),
                    Text(
                      '\$4.99',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gilroy-Bold',
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                Divider(color: Colors.grey.shade300, thickness: 1.5),
                SizedBox(height: 20),

                ExpandedText(
                  text: 'Product Description',
                  description:
                      'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                ),
                SizedBox(height: 20),
                Divider(color: Colors.grey.shade300, thickness: 1.5),
                SizedBox(height: 20),
                ExpandedText(
                  text: 'Nutritions',
                  trailingWidget: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text(
                      '100gr',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                  customContent: Column(
                    children: const [
                      NutritionRow(title: 'Calories', value: '52 kcal'),
                      NutritionRow(title: 'Carbohydrates', value: '13.8 g'),
                      NutritionRow(title: 'Fiber', value: '2.4 g'),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Divider(color: Colors.grey.shade300, thickness: 1.5),
                SizedBox(height: 20),
                ReviewSection(),
                SizedBox(height: 20),
                CustomButton(text: 'Add to Cart'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
