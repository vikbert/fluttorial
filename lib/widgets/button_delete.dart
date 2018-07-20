import 'package:flutter/material.dart';

class ButtonDelete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
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
    );
  }
}
