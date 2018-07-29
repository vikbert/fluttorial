import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:flutter_tutorial_udemy/pages/products_admin.dart';
import 'package:flutter_tutorial_udemy/pages/products.dart';
import 'package:flutter_tutorial_udemy/pages/product.dart';
import 'package:flutter_tutorial_udemy/pages/auth.dart';
import 'package:flutter_tutorial_udemy/scoped-models/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<ProductsModel>(
      model: ProductsModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'tutorial',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          accentColor: Colors.lightGreenAccent,
        ),
        routes: {
          '/': (BuildContext context) => AuthPage(),
          '/products': (BuildContext context) => ProductsPage(),
          '/admin': (BuildContext context) => ProductsAdminPage()
        },
        onGenerateRoute: (RouteSettings settings) {
          final List<String> pathElements = settings.name.split('/');
          if (pathElements[0] != '') {
            return null;
          }
          if (pathElements[1] == 'product') {
            final int index = int.parse(pathElements[2]);
            return MaterialPageRoute<bool>(
              builder: (BuildContext context) =>
                  ProductPage(index),
            );
          }
          return null;
        },
        onUnknownRoute: (RouteSettings settings) {
          return MaterialPageRoute(
              builder: (BuildContext context) => ProductsPage());
        },
      ),
    );
  }
}
