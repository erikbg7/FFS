

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedTile extends StatefulWidget{
  _AnimatedTileState createState() => _AnimatedTileState();
}

class _AnimatedTileState extends State<AnimatedTile> {

  bool _toogleTile = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      alignment: Alignment(0, !!_toogleTile ? -1.0 : 0),
      child: GestureDetector(
          onTap: (){
            setState(() {
              _toogleTile = !_toogleTile;
            });
          },
          child: AnimatedContainer(
              height: !!_toogleTile ? 100 : 40,
              color: !!_toogleTile ? Colors.green : Colors.grey,
              duration: Duration(milliseconds: 300),
              child: Center(child: Text("ddd"))
          ),
        ),
    );
  }
}