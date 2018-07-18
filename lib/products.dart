import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  final List<String> products;

  ProductList([this.products = const []]) {
    print('[Product widget] constructor');
  }

  Widget _createNewItemWidget(BuildContext context, int index) {
    print('[_createNewItemWidget] INDEX: $index');
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(
              'https://cdn.pixabay.com/photo/2018/07/03/10/47/berries-3513547_1280.jpg'),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(products[index]),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('[Product widget] build()');
    return Expanded(
      child: ListView.builder(
        itemBuilder: _createNewItemWidget,
        itemCount: products.length,
      ),
    );
  }
}
