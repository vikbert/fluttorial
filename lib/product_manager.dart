import 'package:flutter/material.dart';
import './products.dart';
import './produc_control.dart';
import 'package:sprintf/sprintf.dart';

class ProductManager extends StatefulWidget {
  final Map startingProduct;

  ProductManager({this.startingProduct}) {
    print('[ProductManager widget] constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager widget] createState()');
    return ProductManagerState();
  }
}

class ProductManagerState extends State<ProductManager> {
  List<Map> _products = [];

  @override
  void initState() {
    print('[ProductManager State] initState()');
    if (null != widget.startingProduct) {
      _products.add(widget.startingProduct);
    }

    super.initState();
  }

  void _addProduct(Map product) {
    setState(() {
      _products.add(product);
      print(sprintf('_product.length %d', [_products.length]));
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ProductControl(_addProduct),
        ProductList(_products, _deleteProduct),
      ],
    );
  }
}
