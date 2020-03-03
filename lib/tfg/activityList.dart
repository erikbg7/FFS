import 'package:first_flutter_app/tfg/activityImage.dart';
import 'package:first_flutter_app/tfg/maskedImage.dart';
import 'package:flutter/material.dart';

class ActivityList extends StatelessWidget {
  ActivityList({Key key}) : super(key: key);

  final List<Object> objects = [
    {"name": "AIGUESTORTES", "image": "Aiguestortes.jpg", "descr": "El Parc Nacional" },
    {"name": "LES FALLES", "image": "falles.jpg", "descr": "La Festa del Foc"},
    {"name": "El BALNEARI", "image": "balneari.jpg", "descr": "Caldes de Boí"},
    {"name": "EL ROMANIC", "image": "romanic.jpg", "descr": "Patrimoni Cultural"},
    {"name": "LES PISTES", "image": "esqui.jpeg", "descr": "Boí Taüll Resort"},
    {"name": "AIGUESTORTES", "image": "Aiguestortes.jpg", "descr": "El Parc Nacional" },
    {"name": "LES FALLES", "image": "falles.jpg", "descr": "La Festa del Foc"},
    {"name": "El BALNEARI", "image": "balneari.jpg", "descr": "Caldes de Boí"},
    {"name": "EL ROMANIC", "image": "romanic.jpg", "descr": "Patrimoni Cultural"},
    {"name": "LES PISTES", "image": "esqui.jpeg", "descr": "Boí Taüll Resort"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: objects.length,
        itemBuilder: (context, position) {
          return ActivityImage(item: objects[position]);
        },
      ),
    );
  }
}

