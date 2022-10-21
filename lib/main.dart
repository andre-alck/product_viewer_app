import 'package:flutter/material.dart';
import 'package:product_viewer/product/models/product.dart';
import 'package:product_viewer/product/widgets/show_product.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return const MaterialApp(
      title: 'Product Viewer',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    const product = Product(
      price: 1.0,
      imageURL:
          'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
      description: 'foo',
    );

    return const Scaffold(
      body: ShowProduct(
        product: product,
      ),
    );
  }
}
