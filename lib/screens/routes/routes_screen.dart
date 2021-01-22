import 'package:first_flutter_app/bloc/activities_event.dart';
import 'package:first_flutter_app/bloc/routes_bloc.dart';
import 'package:first_flutter_app/bloc/routes_state.dart';
import 'package:first_flutter_app/models/routes_model.dart';
import 'package:first_flutter_app/screens/routes/getRoutes.dart';
import 'package:first_flutter_app/screens/routes/routes_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/routes_scrollable_list.dart';

class RoutesScreen extends StatelessWidget {
  RoutesScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0XFF191919)),
    );
    List<List<RouteInfo>> allLists = getRoutesFromJson2();

    return Scaffold(
      body: BlocProvider(
          create: (BuildContext context) {
            return RoutesBloc();
          },
          child: RoutesListsBuilder(
            routesLists: allLists,
          )),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      titleSpacing: 20,
      backgroundColor: Colors.grey[900],
      title: const Text(
        'Search Activities',
        style: TextStyle(
            fontFamily: 'Lobster',
            fontWeight: FontWeight.w500,
            color: Color(0xFFE6E6E6)),
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

class RoutesListsBuilder extends StatelessWidget {
  final List<List<RouteInfo>> routesLists;

  const RoutesListsBuilder({Key key, this.routesLists}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final activitiesBloc = BlocProvider.of<RoutesBloc>(context);
    activitiesBloc.add(GetActivities(''));

    return BlocBuilder<RoutesBloc, RoutesListsState>(
      builder: (context, state) {
        if (state is RoutesListsError) {
          print(state.message);
        }

        if (state is RoutesListsLoaded) {
          return ListView.builder(
              itemCount: routesLists.length,
              itemBuilder: (ctx, index) {
                return RoutesScrollableList(
                  key: Key('list-$index'),
                  name: getNameByIndex(index),
                  routes: routesLists[index],
                );
              });
        }

        return RoutesSkeleton();
      },
    );
  }
}

String getNameByIndex(int index) {
  if (index == 0) {
    return 'Caminates';
  }
  if (index == 1) {
    return 'Passejades';
  }
  if (index == 1) {
    return 'Excursions';
  }
  return 'Other activities';
}
