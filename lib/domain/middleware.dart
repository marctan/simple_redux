import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:simple_redux/data/userbv.dart';
import 'package:simple_redux/domain/action.dart';
import 'package:simple_redux/domain/app_state.dart';
import 'package:simple_redux/domain/app_statebv.dart';

// ThunkAction<AppState> loginUser(String firstname, String lastname) {
//   return (Store<AppState> store) async {
//     store.dispatch(StartLoadingAction());
//     await Future.delayed(const Duration(seconds: 2));

//     BuiltUser user = BuiltUser((b) => b
//       ..firstname = firstname
//       ..lastname = lastname);
//     store.dispatch(LoginSuccessAction(user));
//   };
// }

// ThunkAction<AppState> reloginUser() {
//   return (Store<AppState> store) async {
//     store.dispatch(StartLoadingAction());
//     await Future.delayed(const Duration(seconds: 2));

//     store.dispatch(LoginFailedAction());
//   };
// }

// class DemoMiddleWare implements MiddlewareClass<AppState> {
//   @override
//   void call(Store<AppState> store, dynamic action, NextDispatcher next) {
//     print(action);
//     if (action is FetchItemAction) {
//       () async {
//         store.dispatch(StartLoadingAction());
//         await Future.delayed(const Duration(seconds: 2));
//         BuiltUser user = BuiltUser((b) => b
//           ..firstname = action.firstname
//           ..lastname = action.lastname);
//         store.dispatch(LoginSuccessAction((b) => b..user = user.toBuilder()));
//       }();
//     }
//     next(action);
//   }
// }

class DemoMiddleWare implements EpicClass<AppState> {
  @override
  Stream call(Stream actions, EpicStore<AppState> store) {
    return combineEpics<AppState>([_setUser])(actions, store);
  }

  Stream<UserAction> _setUser(
      Stream<dynamic> actions, EpicStore<AppState> store) async* {
    await for (final action in actions) {
      if (action is FetchItemAction) {
        yield StartLoadingAction();
        await Future.delayed(const Duration(seconds: 2));
        BuiltUser user = BuiltUser((b) => b
          ..firstname = action.firstname
          ..lastname = action.lastname);
        yield LoginSuccessAction((b) => b..user = user.toBuilder());
      }
    }
  }
}
