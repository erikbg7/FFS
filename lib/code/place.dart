//import 'package:first_flutter_app/network/places/place_provider.dart';
//import 'package:first_flutter_app/network/places/places_repository.dart';
//import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
//
//class Place extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    final firestoreService = FirestoreService();
//
//    return MultiProvider(
//      providers: [
//        ChangeNotifierProvider(create: (context) => ProductProvider()),
//        StreamProvider(create: (context)=> firestoreService.getProducts()),
//      ],
//      child: MaterialApp(
//        title: 'Flutter Demo',
//        theme: ThemeData(
//          primarySwatch: Colors.blue,
//        ),
////        home: Products(),
//      ),
//    );
//  }
//}