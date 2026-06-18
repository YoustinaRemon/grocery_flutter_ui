import '../../../core/constants/app_images.dart';

class Product {
  final String image;
  final String title;
  final String subtitle;
  final String price;

  Product({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  static final List<Product> products = [
    Product(
      image: AppImages.banana,
      title: 'Organic Bananas',
      subtitle: '7pcs, Priceg',
      price: '\$4.99',
    ),
    Product(
      image: AppImages.apple,
      title: 'Red Apple',
      subtitle: '1kg, Priceg',
      price: '\$4.99',
    ),
    Product(
      image: AppImages.whiteEgg,
      title: 'Egg Chicken White',
      subtitle: '180g, Price',
      price: '\$1.50',
    ),
    Product(
      image: AppImages.ginger,
      title: 'Ginger',
      subtitle: '100g, Priceg',
      price: '\$2.99',
    ),
  ];
}
