import 'dart:async';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String image;

  ProductPage(this.title, this.image);

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
              child: Text('Product Details Info'),
            ),
            RawMaterialButton(
              onPressed: () => Navigator.pop(context, true),
              shape: StadiumBorder(),
              fillColor: Theme.of(context).primaryColor,
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5.0,
                    horizontal: 20.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.delete,
                        color: Colors.white,
                        size: 18.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Delete',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
