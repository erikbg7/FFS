import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Container(
          height: size.height * 0.46,
          decoration: BoxDecoration(
            color: Color(0XFF121212),
            image: DecorationImage(
                image: NetworkImage(
                    "https://storage.googleapis.com/appvallboi.appspot.com/Routes/01camibarruera.jpg"),
                fit: BoxFit.cover),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * 0.6,
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0XFF121212),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Colors.blue,
                      size: 19,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Boí",
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sant Joan de Boí',
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Expanded(
                  flex: 1,
                  child: new SingleChildScrollView(
                    scrollDirection: Axis.vertical, //.horizontal
                    child: new Text(
                      "Sant Joan de Boí es la iglesia que conserva el mayor número de elementos arquitectónicos del primer momento" +
                          "constructivo que se produce en la Vall de Boí, en el siglo XI.\n" +
                          "En Sant Joan de Boí, de planta basilical (como Sant Climent y Santa Maria), destaca el conjunto de pinturas" +
                          "murales que se encontraron decorando el interior de las naves con escenas como La lapidación de San Esteban, " +
                          "Los Juglares o el Bestiario. \n En la última restauración se quiso dar a la iglesia un aspecto lo más similar " +
                          "posible al que debía tener en el siglo XII; con este objetivo, se enfoscó el interior y se hicieron cópias de " +
                          "todos los fragmentos de pintura mural conservados actualmente en el MNAC.\n Es aquí donde mejor podemos " +
                          "entender qué función desempeñaban las pinturas y cuál era el aspecto original de estas iglesias.",
//                textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Container(
                  width: 200,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.location_on),
                        SizedBox(width: 10),
                        Text(
                          'View in Map',
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
