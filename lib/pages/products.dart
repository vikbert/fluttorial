import 'package:flutter/material.dart';
import 'package:flutter_tutorial_udemy/widgets/products/products.dart';

import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_tutorial_udemy/scoped-models/products.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildSlideDrawer(context),
      appBar: AppBar(
        title: Text('EasyList'),
        actions: <Widget>[
          ScopedModelDescendant<ProductsModel>(builder:
              (BuildContext context, Widget child, ProductsModel model) {
            return IconButton(
              icon: Icon(model.showFavorites ? Icons.favorite : Icons.favorite_border),
              color: Colors.limeAccent,
              onPressed: () {
                model.toggleDisplayMode();
              },
            );
          }),
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
