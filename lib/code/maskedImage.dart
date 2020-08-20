//import 'package:flutter/material.dart';

//class MaskedImage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      color: Color.fromRGBO(255, 255, 255, 0.19),
//      child: Image.asset(
//        'assets/Aiguestortes.jpg',
//        fit: BoxFit.fitWidth,
//      ),
//    );
//  }

//  @override
//  Widget build(BuildContext context) {
//    return Stack(
//      children: <Widget>[
//        Container(
//          child: Image.asset(
//            'assets/Aiguestortes.jpg',
//            fit: BoxFit.fitWidth,
//          ),
//        ),
//        Container(
//          height: 120,
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//                colors: [const Color(0xFF000000), const Color(0xFFFFFFFF)],
//                begin: FractionalOffset.centerLeft,
//                end: FractionalOffset.centerRight,
//                stops: [0.0, 1.0],
//                tileMode: TileMode.mirror),
//          ),
//        ),
//      ],
//    );
//  }
//}

//@override
//Widget build(BuildContext context) {
//  return Container(
//    decoration: BoxDecoration(
//      gradient: LinearGradient(
//        begin: Alignment.topLeft,
//        end: Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
//        colors: [const Color(0xFFFFFFEE), const Color(0xFF999999)], // whitish to gray
//        tileMode: TileMode.repeated, // repeats the gradient over the canvas
//      ),
//    ),
//  );
//}


  ////////////////////////// GOOD ONE //////////////////////////////
//
//  @override
//  Widget build(BuildContext context) {
//    return ShaderMask(
//      child: Container(
//        height: 135,
//        width: 1000,
//        margin: EdgeInsets.only(bottom: 2.0),
//        child: Image(
//          image: AssetImage('assets/Aiguestortes.jpg'),
//          fit: BoxFit.cover,
//        ),
//      ),
//      shaderCallback: (Rect bounds) {
//        return LinearGradient(
//            colors: [Colors.white, Colors.transparent],
//            stops: [0.0, 0.70]).createShader(bounds);
//      },
//      blendMode: BlendMode.dstOut,
//    );
//  }

///////////////////////////////////////////////////////////////
//  @override
//  Widget build(BuildContext context) {
//    return ShaderMask(
//      child: Image(
////        fit: BoxFit.contain,
////        width: 1000,
////        height: 150,
//        image: AssetImage('assets/romanic.jpg'),
//      ),
//      shaderCallback: (Rect bounds) {
//        return LinearGradient(
//            colors: [Colors.white, Colors.transparent],
//            stops: [0.0, 0.70]).createShader(bounds);
//      },
//      blendMode: BlendMode.dstOut,
//    );
//  }
//}
// Those are some cool changes that we can implement using blendMode, check this out:
//  blendMode: BlendMode.dstIn,
//  blendMode: BlendMode.hardLight,
