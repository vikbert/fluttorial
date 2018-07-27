import 'package:flutter/material.dart';
import 'package:flutter_tutorial_udemy/models/product.dart';

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList(this.products);

  Widget _buildItemIcons(BuildContext context, int index) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.info_outline),
          color: Theme.of(context).primaryColor,
          onPressed: () => Navigator.pushNamed<bool>(
              context, '/product/' + index.toString()),
        ),
        IconButton(
          icon: Icon(Icons.favorite_border),
          color: Colors.red,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildItemInfo(BuildContext context, int index) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                child: Text(
                  products[index].title,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
              ),
              SizedBox(width: 10.0),
              Container(
                padding: EdgeInsets.symmetric(vertical: 2.5, horizontal: 6.5),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(5.0)),
                child: Text(
                  '\$${products[index].price.toString()}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Text('Union Square, San Francisco'),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(4.0))),
        )
      ],
    );
  }

  Widget _buildProductList() {
    if (0 == products.length) {
      return Center(
        child: Text('No products found, please add some.'),
      );
    }

    return ListView.builder(
      itemBuilder: (BuildContext context, index) => Card(
            child: Column(
              children: <Widget>[
                Image.asset(products[index].image),
                _buildItemInfo(context, index),
                _buildItemIcons(context, index),
              ],
            ),
          ),
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
