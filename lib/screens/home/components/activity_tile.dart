import 'package:first_flutter_app/models/description_model.dart';
import 'package:flutter/material.dart';

import 'package:first_flutter_app/models/activity_model.dart';
import 'package:first_flutter_app/screens/description/description_screen.dart';

class ActivityTile extends StatelessWidget {
  const ActivityTile({Key key, this.item}) : super(key: key);
  final Activity item;

  @override
  Widget build(BuildContext context) {
    print(item.id);
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          final ActivityDescription description =
              ActivityDescription.getDescription(item.id);

          return DescriptionSliver(
            description: description,
          );
        }));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 2.0),
        child: Stack(
          children: <Widget>[
            Container(
              height: 165,
              width: 1000,
              color: Colors.black,
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(colors: [
                    Color.fromARGB(70, 0, 0, 0),
                    Color.fromARGB(70, 0, 0, 0)
                  ], stops: [
                    0.0,
                    1.0
                  ]).createShader(bounds);
                },
                blendMode: BlendMode.dstOut,
                child: FadeInImage(
                  placeholder: AssetImage('assets/black.png'),
//                  placeholder: AssetImage('assets/long-loader.gif'),
                  image: AssetImage('assets/${item.image}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              heightFactor: 3.5,
              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.center,
//                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.5, 1.5),
                          blurRadius: 0,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  Text(
                    item.description,
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(1.5, 1.5),
                          blurRadius: 0,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
