import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:first_flutter_app/bloc/activities_event.dart';
import 'package:first_flutter_app/bloc/activities_state.dart';
import 'package:first_flutter_app/network/activity_repository.dart';

class ActivitiesBloc extends Bloc<ActivitiesEvent, ActivitiesState> {
  final ActivitiesRepository repository;

  ActivitiesBloc(this.repository);

  @override
  ActivitiesState get initialState => ActivitiesInitial();

  @override
  Stream<ActivitiesState> mapEventToState(
    ActivitiesEvent event,
  ) async* {
    // Emitting a state from the asynchronous generator
    yield ActivitiesLoading();
    // Branching the executed logic by checking the event type
    if (event is GetActivities) {
      // Emit either Loaded or Error
      try {
        final activities = await repository.getActivities();
        yield ActivitiesLoaded(activities);
      } catch (_) {
        yield ActivitiesError(
            "Couldn't fetch activities. Is the device online?");
      }
    }
  }
}
