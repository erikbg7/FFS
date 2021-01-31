import 'package:equatable/equatable.dart';
import 'package:first_flutter_app/models/routes_model.dart';


abstract class RoutesListsState extends Equatable {
  const RoutesListsState();
}

class RoutesListsInitial extends RoutesListsState {
  const RoutesListsInitial();
  @override
  List<Object> get props => [];
}

class RoutesListsLoading extends RoutesListsState {
  const RoutesListsLoading();
  @override
  List<Object> get props => [];
}

class RoutesListsLoaded extends RoutesListsState {
  final List<RouteList> lists;
  const RoutesListsLoaded(this.lists);
  @override
  List<Object> get props => [lists];
}

class RoutesListsError extends RoutesListsState {
  final String message;
  const RoutesListsError(this.message);

  @override
  List<Object> get props => [message];
}
