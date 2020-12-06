import 'package:first_flutter_app/models/routes_model.dart';
import 'package:flutter/material.dart';

import 'route_card.dart';

class RoutesScrollableList extends StatelessWidget {
  final String name;
  final List<RouteInfo> routes;

  const RoutesScrollableList({
    Key key,
    this.name,
    this.routes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0XFF121212),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
            child: Text(
              name,
              style: Theme.of(context).textTheme.title,
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                routes.length,
                (index) => RouteCard(route: routes[index],),
              ),
            ),
          ),
          Container(
            height: 0, //TODO: maybe height 15
            margin: EdgeInsets.only(top: 20),
//            color: Color.fromARGB(155, 0, 169, 186),
//            color: Colors.black,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
