import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:first_flutter_app/bloc/activities/activities_bloc.dart';

import 'components/activities_list.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(titleSpacing: 20,
//        backgroundColor: Color.fromARGB(255, 0, 169, 186),
        backgroundColor: Colors.grey[900],
        title: const Text('La Vall de Boí', style: TextStyle(
            fontFamily: 'Lobster',

            color: Color.fromARGB(155, 0, 169, 186),
            fontWeight: FontWeight.w500),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.dehaze),
            color: Color.fromARGB(155, 0, 169, 186),

//            color: Color.fromARGB(255, 0, 169, 186),
            onPressed: () {},
          )
        ],
      ),
      body: BlocProvider(
        create: (BuildContext context) {
          return ActivitiesBloc();
        },
        child: ActivitiesList(),
      ),
    );
  }
}
