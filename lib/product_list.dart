import 'package:flutter/material.dart';
import 'pages/product.dart';

class ProductList extends StatelessWidget {
  final List<Map> products;

  ProductList(this.products);

  Widget _buildItemCard(BuildContext context, int index) {
    print('[_createNewItemWidget] INDEX: $index');
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Container(
            margin: EdgeInsets.all(10.0),
            child: FlatButton(
              child: Text(products[index]['title']),
              onPressed: () => Navigator.push<bool>(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ProductPage(
                            title: products[index]['title'],
                            description: products[index]['description'],
                            image: products[index]['image'],
                            price: products[index]['price'],
                          ))),
            ),
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
