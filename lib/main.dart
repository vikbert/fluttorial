import 'package:flutter/material.dart';

import 'package:flutter_tutorial_udemy/pages/products_admin.dart';
import 'package:flutter_tutorial_udemy/pages/products.dart';
import 'package:flutter_tutorial_udemy/pages/product.dart';
import 'package:flutter_tutorial_udemy/pages/auth.dart';
import 'package:flutter_tutorial_udemy/models/product.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final List<Product> _products = [];

  void _addProduct(Product product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tutorial',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        accentColor: Colors.lightGreenAccent,
      ),
      routes: {
        '/': (BuildContext context) => AuthPage(_products),
        '/products': (BuildContext context) => ProductsPage(_products),
        '/admin': (BuildContext context) =>
            ProductsAdminPage(_products, _addProduct, _deleteProduct)
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');

        if (pathElements[0] != '') {
          return null;
        }

        if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]);

          return MaterialPageRoute<bool>(
              builder: (BuildContext context) => ProductPage(
                  title: _products[index].title,
                  description: _products[index].description,
                  image: _products[index].image,
                  price: _products[index].price));
        }
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => ProductsPage(_products));
      },
    );
  }
}
