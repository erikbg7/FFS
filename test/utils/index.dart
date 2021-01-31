
import 'package:flutter/material.dart';

class WidgetInjector extends StatelessWidget {
  final Widget widget;

  const WidgetInjector({Key key, @required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Injector',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Testing widget...'),
        ),
        body: Center(
          child: widget,
        ),
      ),
    );
  }
}