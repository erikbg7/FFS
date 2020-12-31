import 'package:first_flutter_app/screens/church/church_screen.dart';
import 'package:first_flutter_app/screens/mapFiles/index.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/screens/routes/routes_screen.dart';
import 'package:flutter/foundation.dart';

import 'package:first_flutter_app/screens/description/description_screen.dart';
import 'package:first_flutter_app/screens/home/home_screen.dart';

import 'package:first_flutter_app/widgets/routeMap.dart';

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
    final _kPages = <Widget>[
      HomeScreen(),
      ChurchScreen(),
      RoutesScreen(),
      RoutesScreen()
    ];

    final _kNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          backgroundColor: Colors.green,
          icon: Icon(Icons.home),
          title: Text('Discover')),
      BottomNavigationBarItem(
          icon: Icon(Icons.camera_enhance), title: Text('Romanic')),
      BottomNavigationBarItem(icon: Icon(Icons.directions_walk), title: Text('Trekking')),
      BottomNavigationBarItem(
          icon: Icon(Icons.settings), title: Text('Settings')),
    ];

    final bottomNavBar = BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        selectedItemColor: Color.fromARGB(155, 0, 169, 186),
//        unselectedItemColor:  Color.fromARGB(155, 0, 169, 186),
        unselectedItemColor: Colors.grey[400],
        items: _kNavBarItems,
        currentIndex: _currentTabIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentTabIndex = index;
          });
        });

    return MaterialApp(
        title: 'La Vall de Boí',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          brightness: Brightness.dark,
          primaryColor: Colors.black,
//          bottomAppBarTheme: BottomAppBarTheme(color: Color(0xFFE6E6E6)),
          textTheme: TextTheme(
            title: TextStyle(color: Colors.grey[200]),
//            title: TextStyle( color: Color(0xDEFFFFFF)),
            subtitle: TextStyle(color: Colors.grey[400], fontSize: 18),
            caption: TextStyle(color: Colors.grey[600], fontSize: 14),
            body1: TextStyle(color: Colors.grey[600], fontSize: 16)

//            caption: TextStyle( color: Color(0x99FFFFFF)),
//            subhead: TextStyle( color: Color(0x99FFFFFF), fontSize: 18),

//            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
//            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
        ),
        home: Scaffold(
          body: _kPages[_currentTabIndex],
          bottomNavigationBar: bottomNavBar,
        ));
  }
}
