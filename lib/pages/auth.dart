import 'package:flutter/material.dart';
import '../pages/products.dart';

class AuthPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  AuthPage(this.products);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('LOGIN'),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          ProductsPage(products)));
            }),
      ),
    );
  }
}
