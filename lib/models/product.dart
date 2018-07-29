import 'package:flutter/material.dart';

class Product
{
  final String title;
  final String description;
  final String image;
  final double price;
  final bool isFavorite;

  Product(
      {@required this.title,
        this.description,
        this.price,
        this.image,
        this.isFavorite = false
      });
}