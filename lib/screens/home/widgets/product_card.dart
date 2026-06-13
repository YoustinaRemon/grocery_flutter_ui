import 'package:flutter/material.dart';
import '../../../core/constants/product_data.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        height: 242,
        width: 160,
        child: Container(
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xFFE2E2E2)),
          ),

          //Container’s subjects
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: 100,
                  height: 80,
                  child: Image.asset(product.image, fit: BoxFit.contain),
                ),
              ),

              SizedBox(height: 24),

              Text(
                product.title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),

              SizedBox(height: 5),

              Text(
                product.subtitle,
                style: TextStyle(color: Color(0xFF7C7C7C)),
              ),
              SizedBox(height: 10),

              Row(
                children: [
                  Text(
                    product.price,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),

                  Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF53B175),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
