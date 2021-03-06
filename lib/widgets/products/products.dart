import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:flutter_tutorial_udemy/models/product.dart';
import 'package:flutter_tutorial_udemy/scoped-models/main.dart';
import 'package:flutter_tutorial_udemy/widgets/products/product_card.dart';

class Products extends StatelessWidget {
  Widget _buildProductList(List<Product> products) {
    Widget productCards;
    if (products.length > 0) {
      productCards = ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            ProductCard(products[index], index),
        itemCount: products.length,
      );
    } else {
      productCards = new Container(width: 0.0, height: 0.0);
    }

    return productCards;
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<MainModel>(
      builder: (BuildContext context, Widget child, MainModel model) {
        return _buildProductList(model.displayedProducts);
      },
    );
  }
}
