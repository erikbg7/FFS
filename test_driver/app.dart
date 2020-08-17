import 'package:flutter_driver/driver_extension.dart';
import 'package:first_flutter_app/main.dart' as app;

void main() {
  // This line enables the extension.
  enableFlutterDriverExtension();

  // Call the `main()` function of the app
  // We could also call   runApp(MyApp()) or any other widget
  app.main();
}
