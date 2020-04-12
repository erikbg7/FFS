import 'package:first_flutter_app/widgets/favoriteIcon.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ActivityImage extends StatelessWidget {
  const ActivityImage({Key key, this.item}) : super(key: key);
  final item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ShaderMask(
          child: Container(
              height: 135,
              width: 1000,
              margin: EdgeInsets.only(bottom: 2.0),
              child: FadeInImage(
                placeholder: AssetImage('assets/long-loader.gif'),
                image: AssetImage('assets/${item["image"]}'),
                fit: BoxFit.cover,
              )

              //IMAGE 1
//              FadeInImage.assetNetwork(
//                  placeholder: 'assets/long-loader.gif',
//                  image:
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
            item["name"],
            style:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w500, height: 3),
          ),
        ),
        Align(
          alignment: FractionalOffset(0.2, 1),
          child: Text(
            item["descr"],
            style:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w300, height: 5),
          ),
        ),
        Align(
          heightFactor: 2,
          alignment: FractionalOffset(0.95, 0.4),
          child: Container(
            height: 35,
            child: FittedBox(child: FavoriteIcon()),
          ),
        ),
      ],
    );
  }
}
