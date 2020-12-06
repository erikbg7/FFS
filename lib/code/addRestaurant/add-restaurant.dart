import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class AddRestaurant extends StatefulWidget {
  AddRestaurant({Key key}) : super(key: key);

  @override
  _AddRestaurantState createState() => _AddRestaurantState();
}

/// This is the private State class that goes with AddRestaurant.
class _AddRestaurantState extends State<AddRestaurant> {
  var id = '';
  var name = '';
  var description = '';

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            Container(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
              onChanged: (String value) {
                id = value;
              },
            ),
            FloatingActionButton(
              onPressed: () {
                print(id);
              },
              child: const Text('Create'),
            ),
          ],
        ));
  }
}
