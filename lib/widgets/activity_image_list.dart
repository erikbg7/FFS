import 'package:first_flutter_app/network/network.dart';
import 'package:first_flutter_app/widgets/activity_image.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final route = Firestore.instance
    .collection("routes")
    .document("Ruta dels boscos - Barruera");

Future<void> getUserTaskList() async {
  //setZoomInTest(400);
  //createNewRoute('Ruta dels boscos - Barruera', coord);
  final routeInfo = await getRouteInfo();
  //final RouteMap r = RouteMap({'zoom': 1});
  //final r = RouteMap.fromJson(json.decode(routeInfo));

  print(routeInfo);
}

class ActivityList extends StatelessWidget {
  ActivityList({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('La Vall de Boí'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection("activities").snapshots(),
        builder: (context, snapshot) {
          // getUserTaskList();
          if (!snapshot.hasData) {
            return Center(
                child: Image(image: AssetImage('assets/long-loader.gif')));
          }
          return ListView.builder(
            itemCount: snapshot.data.documents.length,
            itemBuilder: (context, position) {
              return ActivityImage(item: snapshot.data.documents[position]);
            },
          );
        },
      ),
    );
  }
}
