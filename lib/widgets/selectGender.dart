import 'package:flutter/material.dart';

class SelectGender extends StatelessWidget {
  const SelectGender({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Gender", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
        Text("Select your gender", style: TextStyle(fontSize: 20.0)),
        Padding(padding: EdgeInsets.only(top: 50)),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                onPressed: () {
                  final TabController controller =
                  DefaultTabController.of(context);
                  if (!controller.indexIsChanging) {
                    controller.animateTo(controller.index +1);
                  }
                },
                padding: EdgeInsets.all(0.0),
                child: Image.asset(
                  'assets/man.png',
                  height: 120,
                  width: 120,
                )),
            RaisedButton(
              padding: EdgeInsets.all(0.0),
              child: Image.asset(
                'assets/woman.png',
                height: 120,
                width: 120,
              ),
              onPressed: () {
                final TabController controller =
                DefaultTabController.of(context);
                if (!controller.indexIsChanging) {
                  controller.animateTo(controller.index +1);
                }
              },
            )
          ],
        ),
      ],
    );
  }
}