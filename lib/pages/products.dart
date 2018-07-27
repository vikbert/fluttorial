import 'package:flutter/material.dart';
import 'package:flutter_tutorial_udemy/product_manager.dart';
import 'package:flutter_tutorial_udemy/side_drawer.dart';
import 'package:flutter_tutorial_udemy/models/product.dart';

class ProductsPage extends StatelessWidget {
  final List<Product> products;

  ProductsPage(this.products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(products),
      appBar: AppBar(
        title: Text('EasyList'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            color: Colors.limeAccent,
            onPressed: () {},
          ),
        ],
      ),
      body: ProductManager(products),
    );
  }
}
