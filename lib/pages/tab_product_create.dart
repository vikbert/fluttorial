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

  Widget _buildTextInputTitle() {
    return TextField(
      decoration: InputDecoration(labelText: 'Product Title'),
      onChanged: (String inputTitle) {
        setState(() {
          titleValue = inputTitle;
        });
      },
    );
  }

  Widget _buildTextInputDescription() {
    return TextField(
      maxLength: 255,
      maxLines: 5,
      decoration: InputDecoration(labelText: 'Product Description'),
      onChanged: (String inputDescription) {
        setState(() {
          descriptionValue = inputDescription;
        });
      },
    );
  }

  Widget _buildTextInputPrice() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: 'Product Price'),
      onChanged: (String inputPrice) {
        setState(() {
          priceValue = double.parse(inputPrice);
        });
      },
    );
  }

  Widget _buildSubmitButton() {
    return RaisedButton(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: ListView(
        children: <Widget>[
          _buildTextInputTitle(),
          _buildTextInputDescription(),
          _buildTextInputPrice(),
          SizedBox(height: 20.0),
          _buildSubmitButton(),
        ],
      ),
    );
  }
}
