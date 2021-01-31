import 'package:flutter/material.dart';

import 'body.dart';



Future<List<Church>> _getChurches() async {
  final firestoreService = FirestoreServiceChurch();
  final List<Church> churches = await firestoreService.getChurchesFuture();

  return churches;
}

class ChurchScreen extends StatelessWidget {
//  final firestoreService = FirestoreService();

  @override
  Widget build(context) {
    return FutureBuilder<List<Church>>(
        future: _getChurches(),
        builder: (context, AsyncSnapshot<List<Church>> snapshot) {
          print(snapshot);
          if (snapshot.hasData) {
            return Scaffold(
              backgroundColor: Color(0XFF121212),
              body: Body(
                church: snapshot.data[0],
              ),
            );
          } else if (snapshot.hasError) {
            return Text("ERROR: ${snapshot.error}");
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}

//  @override
//  Future<Widget> build(BuildContext context) async {
//
//    final Church ch = await _getChurches();
//
//    return Scaffold(
//      backgroundColor: Color(0XFF121212),
//      body: Body(),
//    );
//  }
//}
