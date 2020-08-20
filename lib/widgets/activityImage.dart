import 'package:first_flutter_app/models/activity_model.dart';
import 'package:first_flutter_app/screens/detail/activity_detail.dart';
import 'package:first_flutter_app/widgets/favoriteIcon.dart';
import 'package:flutter/material.dart';

class ActivityImage extends StatelessWidget {
  const ActivityImage({Key key, this.item}) : super(key: key);
  final Activity item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ShaderMask(
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ActivityDetail(
                  imageUrl: 'assets/${item.image}',
                );
              }));
            },
            child: Container(
//              height: 135,
                height: 185,
                width: 1000,
                margin: EdgeInsets.only(bottom: 2.0),
                child: FadeInImage(
                  placeholder: AssetImage('assets/long-loader.gif'),
                  image: AssetImage('assets/${item.image}'),
                  fit: BoxFit.cover,
                )

                //IMAGE 1
//              FadeInImage.assetNetwork(
//                  placeholder: 'assets/long-loader.gif',
//                  image:w
//                      'https://www.surfingtheplanet.com/wp-content/uploads/2018/07/ruta-romanica-vall-boi.jpg',
//              fit: BoxFit.cover,
//              )

                //IMAGE 2 : if we are not going to use kTransparentImage, remove import and dependency from pubspec.yaml
//              FadeInImage.memoryNetwork(
//                placeholder: kTransparentImage,
//                image:
//                'https://www.surfingtheplanet.com/wp-content/uploads/2018/07/ruta-romanica-vall-boi.jpg',
//                fit: BoxFit.cover,
//              )

                //INITIAL IMAGE
//              Image(
//                image: AssetImage('assets/${item["image"]}'),
//                fit: BoxFit.cover,
//              ),
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
