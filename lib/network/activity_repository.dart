import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/activity_model.dart';

class ActivitiesRepository {
  FirebaseFirestore _db = FirebaseFirestore.instance;


  Future<List<Activity>> _fetchActivities() async {
    var ref = _db.collection("activities");
    final QuerySnapshot activities = await ref.get();

    return activities.docs
        .map((doc) => Activity.fromFirestore(doc))
        .toList();
  }

  Future<List<Activity>> getActivities() async {
    return await _fetchActivities();
  }
}
