import 'package:equatable/equatable.dart';

abstract class ActivitiesEvent extends Equatable {
  const ActivitiesEvent();
}

class GetActivities extends ActivitiesEvent {
  final String cityName;

  const GetActivities(this.cityName);

  @override
  List<Object> get props => [cityName];
}
