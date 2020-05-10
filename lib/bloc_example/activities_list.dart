import 'package:first_flutter_app/bloc_example/activities_event.dart';
import 'package:first_flutter_app/bloc_example/activities_state.dart';
import 'package:first_flutter_app/bloc_example/activity_repository.dart';
import 'package:first_flutter_app/widgets/activityImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'activities_bloc.dart';
import 'activity_model.dart';

class ActivitiesList extends StatelessWidget {
  ActivitiesList({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('La Vall de Boí'),
      ),
      body: BlocProvider(
        create: (BuildContext context) {
          return ActivitiesBloc(ActivitiesRepository());
        },
        child: ActivityCard(),
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final activitiesBloc = BlocProvider.of<ActivitiesBloc>(context);
    activitiesBloc.add(GetActivities(''));
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      alignment: Alignment.center,
      child: BlocBuilder<ActivitiesBloc, ActivitiesState>(
          builder: (context, state) {
        if (state is ActivitiesInitial) {
          return buildInitialInput();
        } else if (state is ActivitiesLoading) {
          return buildLoading();
        } else if (state is ActivitiesLoaded) {
          return buildColumnWithData(context, state.activity);
        } else if (state is ActivitiesError) {
          return buildInitialInput();
        }
        return buildInitialInput();
      }),
    );
  }

  Widget buildInitialInput() {
    return Container();
  }

  Widget buildLoading() {
    return Container(
      color: Colors.red,
    );
  }

  Widget buildColumnWithData(ctx, List<Activity> activities) {
    return ListView.builder(
        itemCount: activities.length,
        itemBuilder: (context, position) {
          return ActivityImage(item: activities[position]);
        });
  }
}
