import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:first_flutter_app/bloc/activities_bloc.dart';
import 'package:first_flutter_app/network/activity_repository.dart';

import 'components/activities_list.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);
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
        child: ActivitiesList(),
      ),
    );
  }
}
