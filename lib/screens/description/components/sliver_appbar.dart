import 'package:flutter/material.dart';
import 'package:first_flutter_app/screens/description/description_screen.dart';

SliverAppBar buildSliverAppBar(
    BuildContext context, ActivityDescription descr) {
  return SliverAppBar(
    pinned: true,
    automaticallyImplyLeading: false,
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => Navigator.pop(context),
    ),
    expandedHeight: 200.0,
    flexibleSpace: FlexibleSpaceBar(
      centerTitle: true,
      title: Text('El Romànic'),
      background: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Color.fromARGB(100, 0, 0, 0), BlendMode.darken),
              image: AssetImage('assets/${descr.imageHeader}'),
              fit: BoxFit.fill),
        ),
      ),
    ),
  );
}
