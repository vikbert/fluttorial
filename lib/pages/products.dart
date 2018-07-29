import 'package:flutter/material.dart';
import 'package:flutter_tutorial_udemy/widgets/products/products.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildSlideDrawer(context),
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
      body: Products(),
    );
  }

  Widget _buildSlideDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Choose'),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Manage Products'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/admin');
            },
          )
        ],
      ),
    );
  }
}
