class Product {
  final String title;
  final String description;
  final double price;
  final String thumbnail;

  const Product({
    required this.title,
    required this.price,
    required this.thumbnail,
    required this.description,
  });

  factory Product.fromJson(
    Map json,
  ) {
    return Product(
      title: json['title'],
      price: json['price'],
      thumbnail: json['thumbnail'],
      description: json['description'],
    );
  }
}
