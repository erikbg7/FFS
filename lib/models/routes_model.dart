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
  final int id;
  final String title;
  final String category;
  final String time;
  final String distance;
  final String elevation;
  final String image;

  RouteInfo(this.id, this.title, this.category, this.time, this.distance,
      this.elevation, this.image);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'category': category,
      'time': time,
      'distance': distance,
      'elevation': elevation,
      'image': image
    };
  }

  factory RouteInfo.fromFirestore(route) {
    Map data = route;

    return RouteInfo(
      data['id'],
      data['title'] ?? '',
      data['category'] ?? '',
      data['time'] ?? '',
      data['distance'] ?? '',
      data['elevation'] ?? '',
      data['image'] ?? 'gs://appvallboi.appspot.com/Routes/la_foto_2.jpg',
    );
  }
}

class FirestoreService {
  Firestore _db = Firestore.instance;

  Future saveRoute(RouteInfo route) {
    print('SAVING OBJECT');
    return _db
        .collection('Trekking')
        .document('${route.id}')
        .setData(route.toMap());
  }

//  Future<List<RouteInfo>> getRoutes() async {
//    QuerySnapshot qShot = await _db.collection('Trekking').getDocuments();
//
//    return qShot.documents
//        .map((document) => RouteInfo.fromFirestore(document.data))
//        .toList();
//
//  }
//
//  Future removeProduct(String id) {
//    return _db.collection('churches').document(id).delete();
//  }
}
