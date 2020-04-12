
import 'package:flutter/material.dart';


class AnimatedAppBar extends StatefulWidget {
  const AnimatedAppBar({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AnimatedAppBarState();
}

class _AnimatedAppBarState extends State<AnimatedAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
              pinned: true,
              automaticallyImplyLeading: false,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context, false),
              ),
              expandedHeight: 160.0,
              flexibleSpace: FlexibleSpaceBar(
                  title: Text("Bluetooth Devices"),
                  background: Image.network(
                      'https://www.redeszone.net/app/uploads-redeszone.net/2019/11/que-influye-bluetooth.jpg',
                      fit: BoxFit.fill))),
          // If the content is a List, use SliverList instead
          SliverFillRemaining(child: Center(child: Text("Set up a new device")))
        ]),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 1,
            fixedColor: Colors.black,
            unselectedItemColor: Colors.black54,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Home")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), title: Text("List")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_basket), title: Text("Cart")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), title: Text("Profile")),
            ]));
  }
}
