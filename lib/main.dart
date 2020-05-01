import 'package:first_flutter_app/widgets/elevation_chart.dart';
import 'package:first_flutter_app/widgets/selectGender.dart';
import 'package:first_flutter_app/widgets/activityList.dart';
import 'package:first_flutter_app/widgets/routeMap.dart';
import 'package:flutter/material.dart';

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

    final _kPages = <Widget>[ActivityList(), RouteMap(), AreaGradient()];

    final _kNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(Icons.cloud), title: Text('Activities')),
      BottomNavigationBarItem(icon: Icon(Icons.alarm), title: Text('Route')),
      BottomNavigationBarItem(icon: Icon(Icons.forum), title: Text('Test'))
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
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        body: Center(child: _kPages[_currentTabIndex]),
        bottomNavigationBar: bottomNavBar,
      )
    );
  }
}
