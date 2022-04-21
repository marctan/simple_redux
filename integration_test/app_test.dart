import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:simple_redux/const/keys.dart';
import 'package:simple_redux/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets(
        'tapping floating action button should fetch a user and change the text',
        (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      //verify text only shows "Hello! " initially
      expect(find.text('Hello! '), findsOneWidget);
      final fab = find.byKey(const Key(Constant.KEY_FLOATINGBUTTON));
      
      //emulate a button click on floating action button
      await tester.tap(fab);

      //rebuild and wait for the fetch to finish
      await tester.pumpAndSettle();

      //verify text changed and displays the user
      expect(find.text('Hello! marc'), findsOneWidget);
    });
  });
}
