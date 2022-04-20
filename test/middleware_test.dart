import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:simple_redux/data/repo/user_repository.dart';
import 'package:simple_redux/domain/action.dart';
import 'package:simple_redux/domain/app_statebv.dart';
import 'package:simple_redux/domain/middleware.dart';
import 'package:mockito/mockito.dart';

import 'middleware_test.mocks.dart';
import 'mocks_data.dart';

class MockStore extends Mock implements Store<AppState> {}

@GenerateMocks([AbstractUserRepository])
void main() {
  group(
    'MiddleWare Test',
    () {
      late AbstractUserRepository repository;
      late DemoMiddleWare middleware;
      late Store<AppState> store;
      late EpicStore<AppState> epicStore;

      setUp(() {
        repository = MockAbstractUserRepository();
        store = MockStore();
        middleware = DemoMiddleWare(repository);
        epicStore = EpicStore(store);
      });

      test(
        'Test FetchUserMiddlewareAction Success',
        () async {
          final action = FetchUserMiddlewareAction(
            ((b) => b
              ..firstname = mockUser.firstname
              ..lastname = mockUser.lastname),
          );

          when(repository.fetchUser(action)).thenAnswer(
            (_) => Future.value(mockUser),
          );

          Stream<dynamic> stream = middleware.call(
              Stream.fromIterable([action]).asBroadcastStream(), epicStore);

          expect(
            await stream.toList(),
            [
              FetchUserLoadingAction(),
              FetchUserSuccessAction(((b) => b..user = mockUser.toBuilder())),
            ],
          );
        },
      );

      test(
        'Test FetchUserMiddlewareAction Error',
        () async {
          final action = FetchUserMiddlewareAction(
            ((b) => b
              ..firstname = mockUser.firstname
              ..lastname = mockUser.lastname),
          );

          when(repository.fetchUser(action)).thenThrow(Error());

          Stream<dynamic> stream = middleware.call(
              Stream.fromIterable([action]).asBroadcastStream(), epicStore);

          expect(
            await stream.toList(),
            [
              FetchUserLoadingAction(),
              FetchUserFailedAction(),
            ],
          );
        },
      );
    },
  );
}
