import 'package:first_flutter_app/screens/church/church_screen.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_app/screens/routes/routes_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:first_flutter_app/screens/home/home_screen.dart';

///////////////////////////////////////////////
///////////////////////////////////////////////
///////////////////////////////////////////////
///////////////////////////////////////////////
///////////////////////////////////////////////
void main() {
//  WidgetsFlutterBinding.ensureInitialized();
  runApp(VallBoiApp());
}
///////////////////////////////////////////////
///////////////////////////////////////////////
///////////////////////////////////////////////
///////////////////////////////////////////////
///////////////////////////////////////////////
////////////// Vall de Boí App ////////////////
///////////////////////////////////////////////
///////////////////////////////////////////////
///////////////////////////////////////////////
class VallBoiApp extends StatefulWidget {
  const VallBoiApp({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _VallBoiAppState();
}

class _VallBoiAppState extends State<VallBoiApp> {
  int _currentTabIndex = 0;

  Function onTap(int index) {
    setState(() {
      _currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'La Vall de Boí',
        theme: _buildThemeData(),
        home: Scaffold(
            body: _kPages[_currentTabIndex],
            bottomNavigationBar: _buildBottomNavBar(onTap, _currentTabIndex)));
  }
}

ThemeData _buildThemeData() {
  return ThemeData(
    primarySwatch: Colors.teal,
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    textTheme: TextTheme(
        title: TextStyle(color: Colors.grey[200]),
        subtitle: TextStyle(color: Colors.grey[400], fontSize: 18),
        caption: TextStyle(color: Colors.grey[600], fontSize: 14),
        body1: TextStyle(color: Colors.grey[600], fontSize: 16)),
  );
}


Container _buildBottomNavBar(Function onTap, int currentIndex) {
  return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
          ),
        ],
      ),
      child: BottomNavigationBar(
          backgroundColor: Color(0XFF131313),
          selectedItemColor: Color(0XFFF9F9F9),
          unselectedItemColor: Color(0X99F9F9F9),
          items: _kNavBarItems,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: onTap));
}

final _kNavBarItems = <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Discover')),
  BottomNavigationBarItem(
      icon: Icon(Icons.camera_enhance), title: Text('Romanic')),
  BottomNavigationBarItem(
      icon: Icon(Icons.directions_walk), title: Text('Trekking')),
  BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('Settings')),
];

final _kPages = <Widget>[
  HomeScreen(),
  ChurchScreen(),
  RoutesScreen(),
  RoutesScreen()
];
