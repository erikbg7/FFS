import 'package:first_flutter_app/screens/home/components/activity_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:first_flutter_app/bloc/activities_event.dart';
import 'package:first_flutter_app/bloc/activities_state.dart';
import 'package:first_flutter_app/bloc/activities_bloc.dart';
import 'package:first_flutter_app/models/activity_model.dart';

import 'package:first_flutter_app/screens/home/components/activity_image.dart';

class ActivitiesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final activitiesBloc = BlocProvider.of<ActivitiesBloc>(context);
    activitiesBloc.add(GetActivities(''));
    return Container(
      color: Colors.white,
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
      color: Colors.black,
    );
  }

  Widget buildColumnWithData(ctx, List<Activity> activities) {
    return ListView.builder(
        itemCount: activities.length,
        itemBuilder: (ctx, position) {
          return ActivityTile(item: activities[position]);
        });
  }
}
