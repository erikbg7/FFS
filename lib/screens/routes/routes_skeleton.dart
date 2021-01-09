import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoutesSkeleton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 19),
      color: Color(0XFF191919),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 2,
          itemBuilder: (ctx, index) {
            return buildRoutesSkeleton(context);
          }),
    );
  }

  SingleChildScrollView buildRoutesSkeleton(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      controller: null,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Container(
            color: Colors.grey[800],
            width: 100,
            height: 20,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.grey[800],
            width: 100,
            height: 20,
          ),
          Row(
            children: List.generate(
              2,
              (index) => Container(
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: size.height * 0.29,
                      width: size.width * 0.8,
                      color: Colors.grey[800],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
