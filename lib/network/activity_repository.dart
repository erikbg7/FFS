import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/activity_model.dart';

class ActivitiesRepository {
  final Firestore _db = Firestore.instance;

  Future<List<Activity>> _fetchActivities() async {
    var ref = _db.collection("activities");
    final QuerySnapshot activities = await ref.getDocuments();

    return activities.documents
        .map((doc) => Activity.fromFirestore(doc))
        .toList();
  }

  Future<List<Activity>> getActivities() async {
    return await _fetchActivities();
  }
}
