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
            margin: EdgeInsets.symmetric(vertical: 2.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text(
                    products[index]['title'],
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                  ),
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
                Container(
                  padding: EdgeInsets.symmetric(vertical: 2.5, horizontal: 6.5),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Text(
                    '\$${products[index]['price'].toString()}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),),
          Container(
            child: Text('Union Square, San Francisco'),
            padding: EdgeInsets.symmetric(vertical: 2.5, horizontal: 6.5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(4.0))
            ),
          ),
          SizedBox(height: 15.0,),
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
    return Expanded(
      child: _buildProductList(),
    );
  }
}
