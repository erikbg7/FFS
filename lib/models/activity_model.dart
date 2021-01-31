import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

enum ActivityType { culture, sport, food, relax, route, unknown }

class Activity extends Equatable {
  final ActivityType type;
  final String id;
  final String name;
  final String description;
  final String image;

  Activity({this.type, this.id, this.name, this.description, this.image});

  factory Activity.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data();

    return Activity(
      type: ActivityType.culture,
      id: data['id'] ?? '',
      name: data['name'] ?? '',
      description: data['descr'] ?? '',
      image: data['image'] ?? '',
    );
  }

  @override
  List<Object> get props => [type, name, description, image];
}
