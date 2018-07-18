import 'package:flutter/material.dart';
import 'pages/product.dart';

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
            child: FlatButton(
              child: Text(products[index]),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          ProductPage(products[index]))),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            ProductPage(products[index]))),
                child: Text('Product Details'),
              ),
            ],
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
