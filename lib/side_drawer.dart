import 'package:flutter/material.dart';
import 'pages/products.dart';

class SideDrawer extends StatelessWidget {
  final List<Map<String, dynamic>> products;

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
        Icons.playlist_add,
        color: Colors.white,
      ),
      title: _linkItemText('All Products'),
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
