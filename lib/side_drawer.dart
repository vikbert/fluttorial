import 'package:flutter/material.dart';
import 'package:flutter_tutorial_udemy/pages/products.dart';
import 'package:flutter_tutorial_udemy/models/product.dart';

class SideDrawer extends StatelessWidget {
  final List<Product> products;

  SideDrawer(this.products);

  Widget _linkItemText(String linkText) {
    return Text(
      linkText,
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }

  Widget _productAdminLink(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.mode_edit,
        color: Colors.white,
      ),
      title: _linkItemText('Manage Products'),
      onTap: () {
        Navigator.pushReplacementNamed(context, '/admin');
      },
    );
  }

  Widget _productListLink(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.list,
        color: Colors.white,
      ),
      title: _linkItemText('Product List'),
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    ProductsPage(products))); // close the drawer
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        padding: EdgeInsets.symmetric(
          vertical: 60.0,
        ),
        child: Column(
          children: <Widget>[
            _productAdminLink(context),
            _productListLink(context),
          ],
        ),
      ),
    );
  }
}
