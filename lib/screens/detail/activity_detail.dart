import 'package:flutter/material.dart';

import './components/app_bar.dart';

final List<String> descriptions = [
  "El conjunt romànic de la Vall de Boí està format per les esglésies de Sant Climent i Santa Maria de Taüll, Sant Joan de Boí, Santa Eulàlia d’Erill la Vall, Sant Feliu de Barruera, la Nativitat de Durro, Santa Maria de Cardet, l’Assumpció de Cóll i l’ermita de Sant Quirc de Durro.",
  "Bola",
  "Ruin"
];

class ActivityDetail extends StatelessWidget {
  final String imageUrl;

  const ActivityDetail({Key key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: detailAppBar(context),
      body: Body(
        bodyUrl: imageUrl,
      ),
    );
  }
}

class Body extends StatelessWidget {
  final String bodyUrl;
//  final List<String> descriptions;

  const Body({Key key, this.bodyUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            height: 185,
            width: 1000,
            margin: EdgeInsets.only(bottom: 2.0),
            child: FadeInImage(
              placeholder: AssetImage('assets/long-loader.gif'),
              image: AssetImage(bodyUrl),
              fit: BoxFit.cover,
            )),
        Column(
          children: <Widget>[
            buildParagraph(),
          ],
        )
      ],
    );
  }

  Container buildParagraph() {
    return Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 150),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                descriptions[0],
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.black),
              ),
            ),
          );
  }
}

//return Column(
//children: <Widget>[
//Image.asset(
//bodyUrl,
//height: size.height * 0.35,
//width: double.infinity,
////          width: double.infinity,
////          fit: BoxFit.fill,
//),
//Expanded(
//child: Container(
//padding: EdgeInsets.all(20),
//decoration: BoxDecoration(
//color: Colors.white,
//borderRadius: BorderRadius.only(
//topRight: Radius.circular(30),
//topLeft: Radius.circular(30),
//),
//),
//),
//)
//],
//);
