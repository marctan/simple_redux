import 'package:flutter_test/flutter_test.dart';
import 'package:simple_redux/domain/action.dart';
import 'package:simple_redux/domain/user_reducer.dart';
import 'package:simple_redux/domain/user_statebv.dart';

import 'mocks_data.dart';

void main() {
  group(
    'Reducers Test',
    () {
      late UserState initialState;
      setUp(() {
        initialState = UserState.initial();
      });

      test(
        'Test FetchUserSuccessAction',
        () {
          final action = FetchUserSuccessAction(
            ((b) => b..user = mockUser.toBuilder()),
          );

          final nextState = userReducer(initialState, action);

          expect(
            nextState,
            initialState.rebuild(
              (updates) => updates..user = mockUser.toBuilder(),
            ),
          );
        },
      );

      test(
        'Test FetchUserFailedAction',
        () {
          final action = FetchUserFailedAction();

          final nextState = userReducer(initialState, action);

          expect(
            nextState,
            initialState.rebuild(
              (updates) => updates..error = true,
            ),
          );
        },
      );

      test(
        'Test FetchUserLoadingAction',
        () {
          final action = FetchUserLoadingAction();

          final nextState = userReducer(initialState, action);

          expect(
            nextState,
            initialState.rebuild(
              (updates) => updates..isLoading = true,
            ),
          );
        },
      );
    },
  );
}
