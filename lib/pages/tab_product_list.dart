import 'package:flutter/material.dart';
import 'package:flutter_tutorial_udemy/product_list.dart';
import 'package:flutter_tutorial_udemy/models/product.dart';

class ProductListTab extends ProductList {
  final List<Product> products;

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
