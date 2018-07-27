import 'package:flutter/material.dart';
import 'package:flutter_tutorial_udemy/side_drawer.dart';
import 'package:flutter_tutorial_udemy/pages/tab_product_create.dart';
import 'package:flutter_tutorial_udemy/pages/tab_product_list.dart';
import 'package:flutter_tutorial_udemy/models/product.dart';

class ProductsAdminPage extends StatelessWidget {
  final List<Product> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductsAdminPage(this.products, this.addProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: SideDrawer(products),
        appBar: AppBar(
          title: Text('Manage Products'),
          bottom: TabBar(tabs: <Widget>[
            Tab(text: 'Create Product', icon: Icon(Icons.create)),
            Tab(
              text: 'My Products',
              icon: Icon(Icons.list),
            ),
          ]),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductCreateTab(addProduct),
            ProductListTab(products),
          ],
        ),
      ),
    );
  }
}
