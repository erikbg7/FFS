import 'package:cloud_firestore/cloud_firestore.dart';


final routes = FirebaseFirestore.instance.collection("routes");
final test = FirebaseFirestore.instance.collection("test");


getActivitiesStream() => FirebaseFirestore.instance.collection("activities").snapshots();

setZoomInTest(number) {
  routes.doc('test').update({'zoom': 10});
}

// Creates and initializes a new route
// Receives the [routeName : String] and the [coords: Array[Array]] of the route
// Then initializes de route in firestore and fill the geopoints field with
// the expected structure array
createNewRoute(routeName, coords) async {
//  final DocumentSnapshot doc = await routes.document("Ruta dels boscos - Barruera").get();
//  routes.document('$routeName').setData(doc.data);
//
//  final geopoints = [];
//
//  for (final c in coords) {
//    geopoints.add({'coord': new GeoPoint(c[1], c[0]), 'elev': c[2]});
//  }
//  routes.document('$routeName').updateData({'geopoints' : geopoints});
}


// Get all the information of a route (Ruta dels boscos - Barruera)
getRouteInfo() async {
//  final DocumentSnapshot doc = await routes.document("Ruta dels boscos - Barruera").get();
  final DocumentSnapshot doc = await routes.doc("test").get();
  return doc.data;
}



getQuerySnapshotInfo() {
  ///////// READ DATA
//  QuerySnapshot qShot =
//  await route.collection('geopoints').getDocuments();
//  print('shitty');
//  print('shitty');
//  print('shitty');
//  print(qShot.documents[3]['lat']);
//  print(qShot.documents[3]['lng']);
//  print(qShot.documents[3]['elev']);
//  DocumentSnapshot qShot2 = await route.get();
//  print(qShot2["geopoints"][0]["coord"]);
//
//  final GeoPoint ww = qShot2["geopoints"][0]["coord"];
//
//  print(ww.latitude);
  ///////////////////////

//  qShot.documents.map(
//          (doc) => print(doc)
//      ).toList();
}