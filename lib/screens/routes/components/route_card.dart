import 'package:first_flutter_app/models/routes_model.dart';
import 'package:first_flutter_app/screens/church/church_screen.dart';
import 'package:flutter/material.dart';

class RouteCard extends StatelessWidget {
  final RouteInfo route;

  const RouteCard({Key key, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final marginLeft = key.toString().contains('route-0') ? 19.0 : 12.0;

    return Container(
      height: size.height * 0.29,
      width: size.width * 0.8,
      decoration: buildBackgroundImage(),
      margin: EdgeInsets.only(left: marginLeft, right: 0, top: 10, bottom: 5),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            print('asdjkdakksksks');
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ChurchScreen();
            }));
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: buildRouteInfo()),
          ),
        ),
      ),
    );
  }

  BoxDecoration buildBackgroundImage() {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0XFF121212),
          offset: const Offset(-1, 2),
          blurRadius: 3.0,
          spreadRadius: 1.0,
        ),
      ],
      borderRadius: BorderRadius.circular(8),
      image: DecorationImage(
          colorFilter:
              ColorFilter.mode(Color.fromARGB(50, 0, 0, 0), BlendMode.darken),
          image: NetworkImage('${route.image}'),
          fit: BoxFit.fill),
    );
  }

  List<Widget> buildRouteInfo() {
    return <Widget>[
      Text(
        route.time,
        style: TextStyle(
            color: Colors.grey[50],
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto'),
      ),
      Text(
        route.title.toUpperCase(),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: Colors.grey[50],
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto'),
      ),
      Wrap(
        children: buildRouteLabels(),
      )
    ];
  }

  List<Widget> buildRouteLabels() {
    return <Widget>[
      Text(
        'Distancia:  ${route.distance}',
        style: TextStyle(
            color: Colors.grey[50],
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto'),
      ),
      SizedBox(
        width: 6,
      ),
      Text(
        'Desnivell:  ${route.elevation}',
        style: TextStyle(
            color: Colors.grey[50],
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto'),
      ),
    ];
  }
}
