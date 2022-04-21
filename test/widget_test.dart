import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:simple_redux/const/keys.dart';
import 'package:simple_redux/data/repo/user_repository.dart';
import 'package:simple_redux/domain/app_statebv.dart';
import 'package:simple_redux/domain/middleware.dart';
import 'package:simple_redux/domain/reducer.dart';
import 'package:simple_redux/main.dart';

import 'mocks_data.dart';

void main() {
  final widget = StoreProvider<AppState>(
    store: Store<AppState>(
      reducer,
      initialState: AppState(
        ((b) => b
          ..userState.user = mockUser.toBuilder()
          ..userState.error = false
          ..userState.isLoading = false),
      ),
      middleware: [
        EpicMiddleware(
          combineEpics<AppState>([
            DemoMiddleWare(UserRepository()),
          ]),
        )
      ],
    ),
    child: const MaterialApp(
      home: Home(),
    ),
  );

  testWidgets('should show a textbox and floating action button',
      (WidgetTester tester) async {
    await tester.pumpWidget(widget);
    final text = find.byType(Text);
    final floatingButton = find.byKey(const Key(Constant.KEY_FLOATINGBUTTON));

    //verify that we display a textbox and a floating action button
    expect(text, findsOneWidget);
    expect(floatingButton, findsOneWidget);
  });

  testWidgets('should show the mockData name we provided',
      (WidgetTester tester) async {
    await tester.pumpWidget(widget);
    expect(find.text('Hello! testFirst'), findsOneWidget);
  });

  testWidgets('should show the loading indicator when fetching data',
      (WidgetTester tester) async {
    await tester.pumpWidget(widget);
    final button = find.byKey(const Key(Constant.KEY_FLOATINGBUTTON));
    await tester.tap(button);

    //fetching data will take 2 seconds, so check for loading indicator around 0.5 seconds while it's still showing
    await tester.pump(const Duration(milliseconds: 500));
    expect(find.byKey((const Key(Constant.KEY_PROGRESS_INDICATOR))),
        findsOneWidget);

    //finish the animation
    await tester.pumpAndSettle();
  });
}
