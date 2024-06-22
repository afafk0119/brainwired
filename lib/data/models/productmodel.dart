class Product {
  final String title;
  final double price;
  final String imageUrl;
  final String type;

  Product({
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.type,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      title: json['title'],
      price: json['price'].toDouble(),
      imageUrl: json['image'],
      type: json['type'],
    );
  }
}
