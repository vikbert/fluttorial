import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String product;

  ProductPage(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/woman.jpeg'),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Product Details Info'),
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              onPressed: () => Navigator.pop(context),
              child: Text(
                'BACK TO OVERVIEW',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
    );
  }
}
