import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

class FavoriteIcon extends StatefulWidget {
  _FavoriteIconState createState() => _FavoriteIconState();
}

class _FavoriteIconState extends State<FavoriteIcon> {
  bool _toggleFavourite = false;
  var id = new Random();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: id,
      onPressed: () {
        setState(() {
          _toggleFavourite = !_toggleFavourite;
        });
      },
      backgroundColor: _toggleFavourite ? Colors.teal : Colors.transparent,
      mini: true,
      child: Image(
        image: AssetImage('assets/favorite.png'),
        fit: BoxFit.fill,
      ),
    );
  }
}

//class _FavoriteIconState extends State<FavoriteIcon> {
//  @override
//  Widget build(BuildContext context) {
//    return Material(
//      color: Colors.green,
//      child: Container(
//        height: 35,
//        child: FittedBox(
//          child: FloatingActionButton(
//            onPressed: null,
//            backgroundColor: Colors.black,
//            mini: true,
//            child: Image(
//              image: AssetImage('assets/favorite.png'),
//              fit: BoxFit.fill,
//            ),
//          ),
//        ),
//      ),
//    );
//  }

//  Widget build(BuildContext context) {
//    return Container(
//        height: 35,
//        width: 35,
////        alignment: Alignment.center,
//        decoration: BoxDecoration(
//            border: Border.all(color: Colors.green),
//            borderRadius: BorderRadius.circular(100),
////            backgroundBlendMode: BlendMode.darken,
//            color: Colors.green),
//        child: Padding(
//          padding: EdgeInsets.only(top: 2),
//          child: Icon(
//            Icons.favorite,
//            color: Colors.transparent,
//            size: 24.0,
//            semanticLabel: 'Text to announce in accessibility modes',
//          ),
//        ));
//  }
