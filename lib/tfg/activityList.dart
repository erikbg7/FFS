import 'package:first_flutter_app/tfg/activityImage.dart';
import 'package:first_flutter_app/tfg/maskedImage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ActivityList extends StatelessWidget {
  ActivityList({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
          stream: Firestore.instance.collection("activities").snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text("Loading...");

            return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (context, position) {
                return ActivityImage(item: snapshot.data.documents[position]);
              },
            );
          }),
    );
  }
}
