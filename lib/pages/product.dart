import 'dart:async';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String description;
  final double price;
  final String image;

  ProductPage({
    this.title,
    this.description,
    this.price,
    this.image
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('back button pressed');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(image),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(title),
            ),
             Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(description),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(price.toString()),
            ),
          ],
        ),
      ),
    );
  }
}
