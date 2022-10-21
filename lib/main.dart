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
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      title: 'Product Viewer',
      home: const Home(),
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
    List<Product> products = [];
    List<double> prices = [];
    List<String> imageURLs = [];
    List<String> description = [];

    prices.addAll(
      [
        1.0,
        2.0,
        3.0,
        4.0,
        5.0,
        6.0,
        7.0,
        8.0,
      ],
    );

    imageURLs.addAll(
      [
        'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
        'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
        'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
        'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
        'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
        'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
        'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
        'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
      ],
    );

    description.addAll(
      [
        'foo:bar',
        'foo:bar',
        'foo:bar',
        'foo:bar',
        'foo:bar',
        'foo:bar',
        'foo:bar',
        'foo:bar',
      ],
    );

    for (int i = 0; i < prices.length; i++) {
      products.add(
        Product(
          price: prices[i],
          thumbnail: imageURLs[i],
          description: description[i],
        ),
      );
    }

    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (
          context,
          index,
        ) =>
            const Divider(),
        itemCount: products.length,
        itemBuilder: (
          BuildContext context,
          int index,
        ) {
          return ShowProduct(
            product: products[index],
          );
        },
      ),
    );
  }
}
