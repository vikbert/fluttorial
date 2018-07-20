import 'package:flutter/material.dart';
import '../side_drawer.dart';
import 'tab_product_create.dart';
import 'tab_product_list.dart';

class ProductsAdminPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;
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
