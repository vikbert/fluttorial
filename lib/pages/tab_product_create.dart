import 'package:flutter/material.dart';

class ProductCreateTab extends StatefulWidget {
  final Function addProduct;

  ProductCreateTab(this.addProduct);

  @override
  ProductCreateTabState createState() => ProductCreateTabState();
}

class ProductCreateTabState extends State<ProductCreateTab> {
  String titleValue = '';
  String descriptionValue = '';
  double priceValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Product Title'),
            onChanged: (String value) {
              setState(() {
                titleValue = value;
              });
            },
          ),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(labelText: 'Product Description'),
            onChanged: (String value) {
              setState(() {
                descriptionValue = value;
              });
            },
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Product Price'),
            onChanged: (String value) {
              setState(() {
                priceValue = double.parse(value);
              });
            },
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              final Map<String, dynamic> product = {
                'title': titleValue,
                'description': descriptionValue,
                'price': priceValue,
                'image': 'assets/woman.jpeg'
              };
              widget.addProduct(product);
              Navigator.pushReplacementNamed(context, '/products');
            },
            child: Text('Save'),
          )
        ],
      ),
    );
  }
}
