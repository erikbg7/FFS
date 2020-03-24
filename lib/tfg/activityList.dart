import 'package:first_flutter_app/tfg/activityImage.dart';
import 'package:first_flutter_app/tfg/maskedImage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ActivityList extends StatelessWidget {
  ActivityList({Key key}) : super(key: key);

  final List<Object> objects = [
    {
      "name": "AIGUESTORTES",
      "image": "Aiguestortes.jpg",
      "descr": "El Parc Nacional"
    },
    {"name": "LES FALLES", "image": "falles.jpg", "descr": "La Festa del Foc"},
    {"name": "El BALNEARI", "image": "balneari.jpg", "descr": "Caldes de Boí"},
    {
      "name": "EL ROMANIC",
      "image": "romanic.jpg",
      "descr": "Patrimoni Cultural"
    },
    {"name": "LES PISTES", "image": "esqui.jpeg", "descr": "Boí Taüll Resort"},
    {
      "name": "AIGUESTORTES",
      "image": "Aiguestortes.jpg",
      "descr": "El Parc Nacional"
    },
    {"name": "LES FALLES", "image": "falles.jpg", "descr": "La Festa del Foc"},
    {"name": "El BALNEARI", "image": "balneari.jpg", "descr": "Caldes de Boí"},
    {
      "name": "EL ROMANIC",
      "image": "romanic.jpg",
      "descr": "Patrimoni Cultural"
    },
    {"name": "LES PISTES", "image": "esqui.jpeg", "descr": "Boí Taüll Resort"},
  ];

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
