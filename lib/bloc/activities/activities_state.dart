import 'package:equatable/equatable.dart';
import 'package:first_flutter_app/models/activity_model.dart';

abstract class ActivitiesState extends Equatable {
  const ActivitiesState();
}

class ActivitiesInitial extends ActivitiesState {
  const ActivitiesInitial();
  @override
  List<Object> get props => [];
}

class ActivitiesLoading extends ActivitiesState {
  const ActivitiesLoading();
  @override
  List<Object> get props => [];
}

class ActivitiesLoaded extends ActivitiesState {
  final List<Activity> activity;
  const ActivitiesLoaded(this.activity);
  @override
  List<Object> get props => [activity];
}

class ActivitiesError extends ActivitiesState {
  final String message;
  const ActivitiesError(this.message);
  @override
  List<Object> get props => [message];
}
