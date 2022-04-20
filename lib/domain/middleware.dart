import 'package:redux_epics/redux_epics.dart';
import 'package:simple_redux/data/repo/user_repository.dart';
import 'package:simple_redux/domain/action.dart';
import 'package:simple_redux/domain/app_statebv.dart';

class DemoMiddleWare implements EpicClass<AppState> {
  DemoMiddleWare(this._userRepo);

  final AbstractUserRepository _userRepo;

  @override
  Stream call(Stream actions, EpicStore<AppState> store) {
    return combineEpics<AppState>([_fetchUser])(actions, store);
  }

  Stream<UserAction> _fetchUser(
      Stream<dynamic> actions, EpicStore<AppState> store) async* {
    await for (final action in actions) {
      if (action is FetchUserMiddlewareAction) {
        try {
          yield FetchUserLoadingAction();
          final user = await _userRepo.fetchUser(action);
          yield FetchUserSuccessAction((b) => b..user = user.toBuilder());
        } catch (e) {
          yield FetchUserFailedAction();
        }
      }
    }
  }
}
