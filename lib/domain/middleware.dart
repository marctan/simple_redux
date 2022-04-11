import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:simple_redux/data/user.dart';
import 'package:simple_redux/domain/action.dart';
import 'package:simple_redux/domain/app_state.dart';

ThunkAction<AppState> loginUser(String firstname, String lastname) {
  return (Store<AppState> store) async {
    store.dispatch(StartLoadingAction());
    await Future.delayed(const Duration(seconds: 2));

    User user = User(firstname, lastname);
    store.dispatch(LoginSuccessAction(user));
  };
}
