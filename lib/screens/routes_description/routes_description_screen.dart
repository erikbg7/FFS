import 'package:first_flutter_app/models/routes_model.dart';
import 'package:first_flutter_app/widgets/elevation_chart.dart';
import 'package:flutter/material.dart';

class RouteDescription extends StatefulWidget {
  final RouteInfo routeInfo;
  const RouteDescription({Key key, this.routeInfo}) : super(key: key);
  @override
  _RouteDescriptionState createState() => _RouteDescriptionState();
}

class _RouteDescriptionState extends State<RouteDescription> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isOpened = false;
  @override
  Widget build(BuildContext context) => Scaffold(
        key: _scaffoldKey,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              _buildHeaderImage(context, widget.routeInfo.image),
              Expanded(
                child: _buildRouteInfo(context, widget.routeInfo),
              ),
              _buildBottomSheet(context),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          splashColor: Colors.blue,
          backgroundColor: Colors.blue[100],
          child: Icon(Icons.show_chart),
          onPressed: () {
            if (isOpened) {
              Navigator.pop(context);
            }
            if (!isOpened) {
              this._scaffoldKey.currentState.showBottomSheet(
                  (ctx) => _buildBottomSheet(ctx),
                  backgroundColor: Colors.transparent);
            }
            this.isOpened = !this.isOpened;
          },
        ),
      );
  Container _buildBottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Color.fromARGB(170, 148, 168, 170),
      height: size.height * 0.28,
      child: AreaGradient(),
    );
  }

  Container _buildRouteInfo(BuildContext context, RouteInfo route) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(
        children: <Widget>[
          Text(
            route.title,
            style: Theme.of(context).textTheme.title,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(children: <Widget>[
                Text('Category:'),
                Text('Time:'),
                Text('Distance:'),
                Text('Elevation:'),
              ],),
              Column(children: <Widget>[
                Text(route.category),
                Text(route.time),
                Text(route.distance),
                Text(route.elevation),
              ],),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildHeaderImage(BuildContext context, String imageUrl) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.34,
      child: Align(
        alignment: FractionalOffset(0.05, 0.05),
        child: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      decoration: BoxDecoration(
        color: Color(0XFF121212),
        image:
            DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
      ),
    );
  }
}
