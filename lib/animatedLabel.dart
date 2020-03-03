import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedLabel extends StatefulWidget {
  _AnimatedLabelState createState() => _AnimatedLabelState();
}

class _AnimatedLabelState extends State<AnimatedLabel> {
  double _width = 100;
  double _height = 100;
  String _text = "Initial Text";
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  Color _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          var random = Random();
          setState(() {
            _width = 20 + random.nextInt(250).toDouble();
            _height = 20 + random.nextInt(250).toDouble();
            _text = random.nextInt(300).toString();
            _borderRadius =
                BorderRadius.circular(random.nextInt(100).toDouble());
            _color = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1,
            );
          });
        },
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
          duration: Duration(milliseconds: 700),
          curve: Curves.fastOutSlowIn,
          child: Center(child: Text(_text)),
        ),
      ),
    );
  }
}

////
////class AnimationTest extends StatelessWidget {
////  AnimationTest({Key key}) : super(key: key);
////  String text = "fuck";
////
////  @override
////  Widget build(BuildContext context) {
////    return Material(
////        color: Colors.green,
////        child: InkWell(
////      onTap: () {
////        print("Here I am bro");
////        },
////      child: Container(
////        height: 80,
////        child: Row(
////            mainAxisAlignment: MainAxisAlignment.center,
////            children: <Widget>[Text(text)]),
////      ),
////    ));
////  }
////}
