import 'package:flutter/material.dart';

class SelectAge extends StatelessWidget {
  const SelectAge({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 60, right: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Age", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
          Text("How old are you?", style: TextStyle(fontSize: 20.0)),
          TextField(
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
            onSubmitted: (val) {
              final TabController controller = DefaultTabController.of(context);
              controller.animateTo(controller.index + 1);
            },
          ),
          Padding(padding: EdgeInsets.only(bottom: 70)),
        ],
      ),
    );
  }
}
