import 'package:flutter/material.dart';
import 'package:first_flutter_app/screens/description/description_screen.dart';

SliverList buildSliverList(ActivityDescription descr) {
  return SliverList(
    delegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) => Container(
        color: Colors.black,
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30),
            child: Text(
              descr.descriptions[index].paragraph,
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 2,
                fontSize: 19,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Image.asset('assets/${descr.descriptions[index].image}'),
          Container(
            color: Color.fromARGB(255, 189, 20, 20),
            height: 6,
          )
        ]),
      ),
      childCount: descr.descriptions.length,
    ),
  );
}
