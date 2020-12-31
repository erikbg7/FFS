import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServiceChurch {
  Firestore _db = Firestore.instance;

  Future saveChurch(Church church) {
    print('SAVING OBJECT');
    return _db
        .collection('churches')
        .document(church.id)
        .setData(church.toMap());
  }


  Future<List<Church>> getChurchesFuture() async {

    var querySnap = await _db
        .collection('churches')
        .getDocuments();

    return querySnap.documents
        .map((document) => Church.fromFirestore(document.data))
        .toList();
  }

  Stream<List<Church>> getChurches() {
    return _db.collection('churches').snapshots().map((snapshot) => snapshot
        .documents
        .map((document) => Church.fromFirestore(document.data))
        .toList());
  }

  Future removeProduct(String id) {
    return _db.collection('churches').document(id).delete();
  }
}

class Church {
  final String id;
  final String name;
  final String location;
  final String description;
  final List<String> images;

  Church(this.id, this.name, this.location, this.description, this.images);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'location': location,
      'description': description,
      'images': images
    };
  }

  Church.fromFirestore(Map firestore)
      : id = firestore['id'],
        name = firestore['name'],
        location = firestore['location'],
        description = firestore['description'],
        images = List<String>.from(firestore["images"]);
}

addNewChurch() {
  final firestoreService = FirestoreServiceChurch();
  final List<String> images = [];
  images.add(
      "https://storage.googleapis.com/appvallboi.appspot.com/Routes/romanic.jpg");
  images.add(
      "https://storage.googleapis.com/appvallboi.appspot.com/Routes/la_foto_2.jpg");
  images.add(
      "https://storage.googleapis.com/appvallboi.appspot.com/Routes/la_foto_16.jpg");

  final church = Church(
      'sant-joan',
      'Sant Joan de Boí',
      'Boí',
      "Sant Joan de Boí es la iglesia que conserva el mayor número de elementos arquitectónicos del primer momento" +
          "constructivo que se produce en la Vall de Boí, en el siglo XI.\n" +
          "En Sant Joan de Boí, de planta basilical (como Sant Climent y Santa Maria), destaca el conjunto de pinturas" +
          "murales que se encontraron decorando el interior de las naves con escenas como La lapidación de San Esteban, " +
          "Los Juglares o el Bestiario. \n En la última restauración se quiso dar a la iglesia un aspecto lo más similar " +
          "posible al que debía tener en el siglo XII; con este objetivo, se enfoscó el interior y se hicieron cópias de " +
          "todos los fragmentos de pintura mural conservados actualmente en el MNAC.\n Es aquí donde mejor podemos " +
          "entender qué función desempeñaban las pinturas y cuál era el aspecto original de estas iglesias.",
      images);

  firestoreService.saveChurch(church);
}

class Body extends StatefulWidget {
  final Church church;

  const Body({Key key, this.church}) : super(key: key);

  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  num imageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Church church = widget.church;

    Size size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: size.height * 0.46,
          decoration: BoxDecoration(
            color: Color(0XFF121212),
            image: DecorationImage(
                image: NetworkImage(church.images[imageIndex]),
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
                      church.location,
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Spacer(),
                    buildSmallProductPreview(0, church),
                    SizedBox(width: 6),
                    buildSmallProductPreview(1, church),
                    SizedBox(width: 6),
                    buildSmallProductPreview(2, church),
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    church.name,
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Expanded(
                  flex: 1,
                  child: new SingleChildScrollView(
                    scrollDirection: Axis.vertical, //.horizontal
                    child: new Text(church.description
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
                    onPressed: () {
                      addNewChurch();
                    },
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

  GestureDetector buildSmallProductPreview(int index, Church church) {
    return GestureDetector(
      onTap: () {
        setState(() {
          imageIndex = index;
        });
      },
//      child: ClipRRect(
//        borderRadius: BorderRadius.circular(8.0),
//
//        child: Image.network(
//          church.images[index],
//
//          height: 30.0,
//          width: 30.0,
//          fit: BoxFit.fill,
//        ),
//      ),


      child: AnimatedContainer(
        duration: Duration(seconds: 2000),
        margin: EdgeInsets.only(right: 15),
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: Colors.blue.withOpacity(imageIndex == index ? 1 : 0)),
        ),
        child: Image.network(church.images[index], fit: BoxFit.fill,),
      ),
    );
  }
}
