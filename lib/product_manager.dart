import 'package:flutter/material.dart';
import 'package:flutter_tutorial_udemy/product_list.dart';
import 'package:flutter_tutorial_udemy/models/product.dart';

class ProductManager extends StatelessWidget {
  final List<Product> products;
  ProductManager(this.products);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ProductList(products),
      ],
    );
  }
}
