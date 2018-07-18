import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: RawMaterialButton(
        fillColor: Colors.deepOrange,
        splashColor: Colors.orange,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              const Icon(
                Icons.account_circle,
                color: Colors.amber,
              ),
              const SizedBox(
                width: 8.0,
              ),
              const Text(
                'Add New Product',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        shape: const StadiumBorder(),
        onPressed: () {
          addProduct('Another Product');
        },
      ),
    );
  }
}
