import 'package:flutter/material.dart';

import '../models/product.dart';

class ShowProduct extends StatelessWidget {
  final Product product;
  const ShowProduct({
    super.key,
    required this.product,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return ListTile(
      leading: Image.network(
        product.thumbnail,
      ),
      title: Text(
        product.description,
      ),
      subtitle: Text(
        product.price.toString(),
      ),
    );
  }
}
