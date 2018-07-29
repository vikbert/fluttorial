import 'package:flutter/material.dart';

class AddressTag extends StatelessWidget {
  final String address;

  AddressTag(this.address);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(address),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(4.0))),
    );
  }
}
