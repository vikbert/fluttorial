import 'dart:async';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String description;
  final double price;
  final String image;

  ProductPage({this.title, this.description, this.price, this.image});

  Widget _buildSocialIcons(BuildContext context) {
    var _primaryGreen = Theme.of(context).primaryColor;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.call, color: _primaryGreen),
              Text('CALL', style: TextStyle(color: _primaryGreen)),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.gps_fixed, color: _primaryGreen),
              Text('ROUTE', style: TextStyle(color: _primaryGreen),),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.share, color: _primaryGreen),
              Text('SHARE', style: TextStyle(color: _primaryGreen)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProductTitles(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('Union Square, San Francisco')
              ],
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.5, horizontal: 5.0),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(5.0)),
            child: Text(
              '\$${price.toString()}',
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
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
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  _buildProductTitles(context),
                  _buildSocialIcons(context),
                  Text(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
