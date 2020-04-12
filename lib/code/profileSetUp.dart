import 'package:first_flutter_app/code/selectAge.dart';
import 'package:first_flutter_app/widgets/selectGender.dart';
import 'package:flutter/material.dart';

class ProfileSetUp extends StatelessWidget {
  const ProfileSetUp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final steps = <Widget>[
      SelectGender(),
      SelectAge(),
      Image.asset(
        'assets/logo-vall-boi.png',
        height: 120,
        width: 120,
      ),
      Icon(Icons.alarm),
      Icon(Icons.language)
    ];

    return DefaultTabController(
      length: steps.length,
      child: Builder(
        builder: (BuildContext context) => Padding(
          padding: const EdgeInsets.fromLTRB(18.0, 50.0, 18.0, 50.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: IconTheme(
                    data: IconThemeData(
                        size: 128.0, color: Theme.of(context).accentColor),
                    child: TabBarView(
//                        uncomment this line to block user horizontal scrolling
//                        physics: NeverScrollableScrollPhysics(),
                        children: steps)),
              ),
              TabPageSelector(),
            ],
          ),
        ),
      ),
    );
  }
}
