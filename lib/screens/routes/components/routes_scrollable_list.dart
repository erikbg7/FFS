
import 'package:flutter/material.dart';

import 'route_card.dart';


class RoutesScrollableList extends StatelessWidget {
  final String title;

  const RoutesScrollableList({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
            child: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                20,
                    (index) => RouteCard(),
              ),
            ),
          ),
          Container(
            height: 5,
            margin: EdgeInsets.only(top: 20),
            color: Color.fromARGB(155, 0, 169, 186),
          ),
        ],
      ),
    );
  }
}