import 'package:flutter/material.dart';
import './product_list.dart';

class ProductManager extends StatelessWidget {
  final List<Map<String, dynamic>> products;
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
