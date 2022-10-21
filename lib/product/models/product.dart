class Product {
  final String? title;
  final String description;
  final double price;
  final String thumbnail;

  const Product({
    this.title,
    required this.price,
    required this.description,
    required this.thumbnail,
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
