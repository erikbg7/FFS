// Imports the Flutter Driver API.
import 'package:first_flutter_app/utils/keys.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

Future<void> delay([int milliseconds = 250]) async {
  await Future<void>.delayed(Duration(milliseconds: milliseconds));
}

void main() {
  group('AppVallBoí ', () {
//    final activityListFinder = find.byValueKey('activity-list');
    final activityDescriptionFinder = find.byValueKey('description-falles.jpg');

    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('increments the counter', () async {
      expect(
          await driver.getText(activityDescriptionFinder), 'La Festa del Foc');
    });

    test('Navigation Between Bottotm Tabs', () async {
      final navigateRouteButton = find.byValueKey(Keys.navigationRoute);

      await driver.waitFor(navigateRouteButton);

      await delay(4000);

      await driver.tap(navigateRouteButton);

      await delay(4000);
    });
  });
}
