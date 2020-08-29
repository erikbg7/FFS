
import 'package:flutter/material.dart';


class RouteInfoLabel extends StatelessWidget {
  final String label;

  RouteInfoLabel(this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(50, 0, 0, 0),
      margin: EdgeInsets.only(right: 7, top: 10),
      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
