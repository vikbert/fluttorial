import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final List<String> products;

  ProductList([this.products = const []]) {
    print('[Product widget] constructor');
  }

  Widget _buildItemCard(BuildContext context, int index) {
    print('[_createNewItemWidget] INDEX: $index');
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/woman.jpeg'),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(products[index]),
          ),
        ],
      ),
    );
  }

  Widget _buildProductList() {
    if (0 == products.length) {
      return Center(
        child: Text('No products found, please add some.'),
      );
    }

    return ListView.builder(
      itemBuilder: _buildItemCard,
      itemCount: products.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    print('[Product widget] build()');

    return Expanded(
      child: _buildProductList(),
    );
  }
}
