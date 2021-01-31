import 'package:first_flutter_app/models/activity_model.dart';
import 'package:first_flutter_app/screens/home/components/activity_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../utils/index.dart';

void main() {
  // Define a test. The TestWidgets function also provides a WidgetTester
  // to work with. The WidgetTester allows building and interacting
  // with widgets in the test environment.
  testWidgets('ActivityTile widget', (WidgetTester tester) async {
    final Activity activity = Activity(
        type: ActivityType.culture,
        id: '1',
        name: 'name',
        description: 'description',
        image: 'falles.jpg');

    // Create the widget by telling the tester to build it.
    await tester.pumpWidget(
      WidgetInjector(
        widget: ActivityTile(
          item: activity,
        ),
      ),
    );

    // Create the Finders.
    final nameFinder = find.text(activity.name);
    final descriptionFinder = find.text(activity.description);
    final fadeImageFinder = find.byType(FadeInImage);

    // Use the `findsOneWidget` matcher provided by flutter_test to
    // verify that the Text widgets appear exactly once in the widget tree.
    expect(nameFinder, findsOneWidget);
    expect(descriptionFinder, findsOneWidget);
    expect(fadeImageFinder, findsOneWidget);
  });
}

