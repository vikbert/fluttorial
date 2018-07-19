import 'package:flutter/material.dart';
import 'pages/product.dart';

class ProductList extends StatelessWidget {
  final List<Map> products;
  final Function deleteProduct;

  ProductList(this.products, this.deleteProduct) {
    print('[Product widget] constructor');
  }

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
              onPressed: () => Navigator
                      .push<bool>(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => ProductPage(
                                  products[index]['title'],
                                  products[index]['image'])))
                      .then((bool doDelete) {
                    if (doDelete) {
                      deleteProduct(index);
                    }
                  }),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () => Navigator
                        .push<bool>(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => ProductPage(
                                    products[index]['title'],
                                    products[index]['image'])))
                        .then((bool value) {
                      if (value) {
                        deleteProduct(index);
                      }
                    }),
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
