import 'package:redux/redux.dart';
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

class DemoMiddleWare implements MiddlewareClass<AppState> {
  @override
  void call(Store<AppState> store, dynamic action, NextDispatcher next) {
    print(action);
    if (action is FetchItemAction) {
      () async {
        store.dispatch(StartLoadingAction());
        await Future.delayed(const Duration(seconds: 2));
        BuiltUser user = BuiltUser((b) => b
          ..firstname = action.firstname
          ..lastname = action.lastname);
        store.dispatch(LoginSuccessAction((b) => b..user = user.toBuilder()));
      }();
    }
    next(action);
  }
}
