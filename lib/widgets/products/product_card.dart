import 'package:flutter/material.dart';
import 'package:flutter_tutorial_udemy/models/product.dart';
import 'package:flutter_tutorial_udemy/widgets/ui_elements/title_default.dart';

import 'package:flutter_tutorial_udemy/widgets/products/price_tag.dart';
import 'package:flutter_tutorial_udemy/widgets/products/address_tag.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final int productIndex;

  ProductCard(this.product, this.productIndex);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(product.image),
          _buildTitlePriceRow(context),
          AddressTag('Union Square, San Francisico'),
          _buildActionButtons(context),
        ],
      ),
    );
  }

  Widget _buildTitlePriceRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TitleDefault(product.title),
          SizedBox(width: 10.0),
          PriceTag(product.price.toString()),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.info_outline),
          color: Theme.of(context).primaryColor,
          onPressed: () => Navigator.pushNamed<bool>(
              context, '/product/' + productIndex.toString()),
        ),
        IconButton(
          icon: Icon(Icons.favorite_border),
          color: Colors.red,
          onPressed: () => Navigator.pushNamed<bool>(
              context, '/product/' + productIndex.toString()),
        ),
      ],
    );
  }
}
