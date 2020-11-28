import 'package:first_flutter_app/bloc/activities_event.dart';
import 'package:first_flutter_app/bloc/routes_bloc.dart';
import 'package:first_flutter_app/bloc/routes_state.dart';
import 'package:first_flutter_app/network/routes_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/routes_scrollable_list.dart';

class RoutesScreen extends StatelessWidget {
  RoutesScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BlocProvider(
          create: (BuildContext context) {
            return RoutesBloc(RoutesRepository());
          },
          child: RoutesListsBuilder()),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      titleSpacing: 20,
      backgroundColor: Colors.grey[900],
      title: const Text(
        'Search Activities',
        style: TextStyle(fontFamily: 'Lobster', fontWeight: FontWeight.w500, color: Color(0xFFE6E6E6)),
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
  const RoutesListsBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final activitiesBloc = BlocProvider.of<RoutesBloc>(context);
    activitiesBloc.add(GetActivities(''));

    return BlocBuilder<RoutesBloc, RoutesListsState>(
      builder: (context, state) {

        if (state is RoutesListsError) {
          print("Hello");
          print(state.message);
        }

        if (state is RoutesListsLoaded) {
          print("Hello");
          print(state.lists.length);
          print(state.lists[0]);
          print(state.lists[1]);
          print(state.lists[1].routes[0].title);
          return ListView.builder(
              itemCount: state.lists.length+2,
              itemBuilder: (ctx, index) {
                return RoutesScrollableList(
                  name: state.lists[0].name,
                  routes: state.lists[0].routes,
                );
              });

        }

        return Text("dkjndjn");
      },
    );
  }
}
