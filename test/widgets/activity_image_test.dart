import 'package:first_flutter_app/bloc_example/activity_model.dart';
import 'package:first_flutter_app/widgets/activity_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('ActivityImage widget', (WidgetTester tester) async {
    final Activity activity = Activity(
        type: ActivityType.culture,
        name: 'name',
        description: 'description',
        image: 'falles.jpg');

    await tester.pumpWidget(Directionality(
      child: MediaQuery(
        data: MediaQueryData(),
        child: ActivityImage(item: activity),
      ),
      textDirection: TextDirection.ltr,
    ));

    expect(find.text(activity.name), findsOneWidget);
    expect(find.text(activity.description), findsOneWidget);
    expect(find.byType(FadeInImage), findsOneWidget);
  });
}
