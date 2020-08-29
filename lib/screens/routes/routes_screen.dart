import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:first_flutter_app/bloc/activities_bloc.dart';
import 'package:first_flutter_app/network/activity_repository.dart';

import 'components/routes_scrollable_list.dart';


class RoutesScreen extends StatelessWidget {
  RoutesScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  BlocProvider<ActivitiesBloc> buildBody() {
    return BlocProvider(
      create: (BuildContext context) {
        return ActivitiesBloc(ActivitiesRepository());
      },
      child: ListView(
        children: <Widget>[
          RoutesScrollableList(
            title: "Rutes Entre Pobles",
          ),
          RoutesScrollableList(
            title: "Caminates",
          ),
          RoutesScrollableList(
            title: "Excursions",
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      titleSpacing: 20,
      backgroundColor: Color.fromARGB(255, 0, 169, 186),
      title: const Text(
        'Search Activities',
        style: TextStyle(fontFamily: 'Lobster', fontWeight: FontWeight.w500),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.dehaze),
          onPressed: () {},
        )
      ],
    );
  }
}


