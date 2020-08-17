import 'package:first_flutter_app/widgets/elevation_chart.dart';
import 'package:first_flutter_app/widgets/routeMap.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/utils/keys.dart';

import 'bloc_example/activities_list.dart';

void main() {
//  WidgetsFlutterBinding.ensureInitialized();
  runApp(VallBoiApp());
}

/////////////////////////////////////////////////////////////////////////////
/////////////////// Vall de Boí Apps
////////////////////////////////////////////////////////////////////////////
class VallBoiApp extends StatefulWidget {
  const VallBoiApp({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _VallBoiAppState();
}

class _VallBoiAppState extends State<VallBoiApp> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _kPages = <Widget>[ActivitiesList(), RouteMap(), AreaGradient()];

    final _kNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.cloud),
        title: Text('Activities', key: Key(Keys.navigationActivities)),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.alarm),
        title: Text('Route', key: Key(Keys.navigationRoute)),
      ),
      BottomNavigationBarItem(icon: Icon(Icons.forum), title: Text('Test')),
      BottomNavigationBarItem(
          icon: Icon(Icons.settings), title: Text('Settings')),
    ];

    final bottomNavBar = BottomNavigationBar(
        items: _kNavBarItems,
        currentIndex: _currentTabIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentTabIndex = index;
          });
        });

    return MaterialApp(
        title: 'Flutter Demo',
        theme:
            ThemeData(primarySwatch: Colors.teal, brightness: Brightness.dark),
        home: Scaffold(
          body: Center(child: _kPages[_currentTabIndex]),
          bottomNavigationBar: bottomNavBar,
        ));
  }
}
