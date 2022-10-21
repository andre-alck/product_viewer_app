import 'package:flutter/material.dart';
import 'package:product_viewer/product/models/product.dart';

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
    var deviceHeight = MediaQuery.of(
          context,
        ).size.height /
        4;
    var deviceWidth = MediaQuery.of(
          context,
        ).size.width /
        2;

    return Padding(
      padding: const EdgeInsets.all(
        8.0,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  15.0,
                ),
              ),
              color: Colors.grey[300],
            ),
            width: deviceWidth,
            height: deviceHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  product.description,
                ),
                Text(
                  product.price.toString(),
                ),
              ],
            ),
          ),
          Container(
            width: deviceWidth,
            height: deviceHeight / 2,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  15.0,
                ),
              ),
              color: Colors.blue,
            ),
            child: Image.network(
              'https://storage.googleapis.com/cms-storage-bucket/780e0e64d323aad2cdd5.png',
            ),
          ),
        ],
      ),
    );
  }
}
