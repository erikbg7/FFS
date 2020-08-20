import 'package:flutter/material.dart';

import 'package:first_flutter_app/models/activity_model.dart';
import 'package:first_flutter_app/screens/description/description_screen.dart';
import 'package:first_flutter_app/widgets/favoriteIcon.dart';

class ActivityTile extends StatelessWidget {
  const ActivityTile({Key key, this.item}) : super(key: key);
  final Activity item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ShaderMask(
          child: Container(
            height: 165,
            width: 1000,
            margin: EdgeInsets.only(bottom: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/${item.image}'),
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DescriptionSliver();
                }));
              },
            ),
          ),
          shaderCallback: (Rect bounds) {
            return LinearGradient(colors: [
              Colors.white,
              Color.fromARGB(150, 0, 0, 0),
              Colors.transparent,
              Colors.transparent
            ], stops: [
              0.0,
              0.45,
              0.7,
              1
            ]).createShader(bounds);
          },
          blendMode: BlendMode.dstOut,
        ),
        Align(
          alignment: FractionalOffset(0.2, 0.4),
          child: Text(
            item.name,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 3,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(1.5, 1.5),
                  blurRadius: 0,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: FractionalOffset(0.2, 1),
          child: Text(
            item.description,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              height: 5,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(1.5, 1.5),
                  blurRadius: 0,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
        Align(
          heightFactor: 2,
          alignment: FractionalOffset(0.95, 0.4),
          child: Container(
            height: 35,
            child: FittedBox(
              child: FavoriteIcon(),
            ),
          ),
        ),
      ],
    );
  }
}
