import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';





AppBar detailAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.place),
        onPressed: () {
          Fluttertoast.showToast(
              msg: "   Afegit a La Teva Ruta   ",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 2,
              backgroundColor: Colors.green,
              textColor: Colors.white,
              fontSize: 16.0
          );
        },
      ),
      IconButton(
        icon: Icon(Icons.dehaze),
        onPressed: () {},
      )
    ],
  );
}