import 'package:flutter/material.dart';
import '../product_list.dart';

class ProductListTab extends ProductList {
  final List<Map<String, dynamic>> products;

  ProductListTab(this.products) : super(products);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        super.build(context),
      ]
    );
  }
}
