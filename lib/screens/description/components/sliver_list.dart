import 'package:flutter/material.dart';

import 'package:first_flutter_app/models/description_model.dart';


SliverList buildSliverList(ActivityDescription descr) {
  return SliverList(
    delegate: SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        final description = descr.descriptions[index];
        return Container(
          color: Colors.black,
          child: Column(children: <Widget>[
            renderTitle(description.title),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 35,
                left: 35,
                right: 35,
                top: 15,
              ),
              child: Text(
                description.paragraph,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(150, 255, 255, 255),
                  height: 2,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Color.fromARGB(50, 0, 0, 0), BlendMode.darken),
                    image:
                        AssetImage('assets/${descr.descriptions[index].image}'),
                    fit: BoxFit.fill),
              ),
//            child: Image.asset('assets/${descr.descriptions[index].image}'),
            ),
            Container(
              color: Color.fromARGB(155, 0, 169, 186),
//            color: Color.fromARGB(255, 42, 2, 6),
              height: 6,
            )
          ]),
        );
      },
      childCount: descr.descriptions.length,
    ),
  );
}

Widget renderTitle(String title) {
  return title.isNotEmpty
      ? Padding(
          padding: EdgeInsets.only(top: 40),
          child: Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
        )
      : Container();
}
