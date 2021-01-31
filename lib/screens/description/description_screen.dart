import 'package:flutter/material.dart';

import 'package:first_flutter_app/models/description_model.dart';

import 'components/sliver_appbar.dart';
import 'components/sliver_list.dart';

class DescriptionSliver extends StatefulWidget {
  final ActivityDescription description;

  const DescriptionSliver({Key key, this.description}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DescriptionSliverState();
}

class _DescriptionSliverState extends State<DescriptionSliver> {
  @override
  Widget build(BuildContext context) {
    final ActivityDescription data = widget.description;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            buildSliverAppBar(context, data),
            buildSliverList(data),
          ],
        ),
      ),
    );
  }
}
