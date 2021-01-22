import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:first_flutter_app/models/routes_model.dart';


class RoutesRepository {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<RouteList>> _fetchLists() async {
    var ref = _db.collection("routes_list");
    final QuerySnapshot activities = await ref.get();

    print(activities.docs.elementAt(1).data);

    return activities.docs
        .map((doc) => RouteList.fromFirestore(doc))
        .toList();
  }

  Future<List<RouteList>> getRoutesLists() async {
    return await _fetchLists();
  }
}
