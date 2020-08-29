
import 'package:flutter/material.dart';

import 'route_info_label.dart';


class RouteCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 270,
      margin: EdgeInsets.only(left: 20, right: 10, top: 0, bottom: 0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 210,
            width: 270,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.white),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Image(
                    alignment: Alignment.center,
                    height: 100,
                    width: double.infinity,
                    image: AssetImage('assets/romanic.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 10,
                ),
                Text(
                  "Barruera - Boí (Camí de l'Aigua)",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Row(
                  children: <Widget>[
                    RouteInfoLabel("1 h 40 min"),
                    RouteInfoLabel("3.97 km"),
                    RouteInfoLabel("180 m \u{2197}"),
                  ],
                )
              ],
            ),
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
//                splashColor: Colors.lightGreenAccent,
                onTap: () {
                  print("/////////////");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
