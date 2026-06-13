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
      image: 'assets/images/banana.png',
      title: 'Organic Bananas',
      subtitle: '7pcs, Priceg',
      price: '\$4.99',
    ),
    Product(
      image: 'assets/images/apple.png',
      title: 'Red Apple',
      subtitle: '1kg, Priceg',
      price: '\$4.99',
    ),
    Product(
      image: 'assets/images/white egg.png',
      title: 'Egg Chicken White',
      subtitle: '180g, Price',
      price: '\$1.50',
    ),
  ];
}
