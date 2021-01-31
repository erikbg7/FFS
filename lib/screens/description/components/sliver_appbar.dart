import 'package:flutter/material.dart';

import 'package:first_flutter_app/models/description_model.dart';


SliverAppBar buildSliverAppBar(
    BuildContext context, ActivityDescription descr) {
  return SliverAppBar(
    backgroundColor: Color.fromARGB(255, 0, 169, 186),
    pinned: true,
    automaticallyImplyLeading: false,
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => Navigator.pop(context),
    ),
    expandedHeight: 170.0,
    flexibleSpace: FlexibleSpaceBar(
      centerTitle: true,
      title: Text(
        descr.section,
        style: TextStyle(
          fontFamily: 'Lobster',
        ),
      ),
      background: Container(
//        child: FadeInImage(
//          placeholder: AssetImage('assets/long-loader.gif'),
//          image: AssetImage('assets/${descr.imageHeader}'),
//          fit: BoxFit.cover,
//        ),
        decoration: BoxDecoration(
//          color: Color.fromARGB(255, 42, 2, 6),
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
