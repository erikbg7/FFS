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
    bool isFirstItem = key.toString().contains('list-0');

    return Container(
      color: Color(0XFF191919),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          getPageTitle(isFirstItem),
          buildlListTitle(),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                routes.length,
                (index) => RouteCard(
                  route: routes[index],
                  key: Key('route-$index'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getPageTitle(bool hasTitle) {
    return hasTitle
        ? Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'Caminates i Excursions',
              style: TextStyle(
                fontSize: 22,
                color: Colors.grey[50],
                fontWeight: FontWeight.w900,
                fontFamily: 'Roboto',
              ),
            ),
          )
        : SizedBox();
  }

  Padding buildlListTitle() {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
                color: Colors.grey[50],
                fontWeight: FontWeight.w900,
                fontFamily: 'Roboto',
                fontSize: 18),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Caminades tranquiles per fer amb la \nfamilia i coneixer la Vall',
            style: TextStyle(
              color: Colors.grey[300],
              fontFamily: 'Roboto',
            ),
          )
        ],
      ),
    );
  }
}