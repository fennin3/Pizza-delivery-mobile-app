import 'package:flutter/material.dart';

class QuantityIcon extends StatelessWidget {
  final Icon icon;

  QuantityIcon({@required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: icon,
        ));
  }
}
