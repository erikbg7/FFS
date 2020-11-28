import 'package:cloud_firestore/cloud_firestore.dart';


class RouteList {
  final String name;
  final List<RouteInfo> routes;

  RouteList(this.name, this.routes);

  factory RouteList.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data;

    print('\n\n');

    final name = data['name'] ?? '';
    final routesDynamic = data['routes'] ?? [];

    List<RouteInfo> routes = List<RouteInfo>();

    for (var route in routesDynamic) {
      print(route);
      routes.add(RouteInfo.fromFirestore(route));
    }

    return RouteList(name, routes);
  }
}

class RouteInfo {
  final String title;
  final String time;
  final String distance;
  final String elevation;
  final String image;

  RouteInfo(this.title, this.time, this.distance, this.elevation, this.image);

  factory RouteInfo.fromFirestore(route) {
    Map data = route;

    return RouteInfo(
      data['title'] ?? '',
      data['time'] ?? '',
      data['distance'] ?? '',
      data['elevation'] ?? '',
      data['image'] ?? 'gs://appvallboi.appspot.com/Routes/la_foto_2.jpg',
    );
  }
}
