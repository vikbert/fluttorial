import 'package:flutter/material.dart';

class TitleDefault extends StatelessWidget {
  final String title;

  TitleDefault(this.title);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        title,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
      ),
    );
  }
}
