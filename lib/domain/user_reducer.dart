import 'package:redux/redux.dart';
import 'package:simple_redux/domain/action.dart';
import 'package:simple_redux/domain/user_statebv.dart';

final userReducer = combineReducers<UserState>(
  [
    TypedReducer<UserState, LoginSuccessAction>(_loginSuccess),
    TypedReducer<UserState, LoginFailedAction>(_loginFailed),
    TypedReducer<UserState, StartLoadingAction>(_startLoading),
  ],
);

UserState _loginSuccess(UserState state, LoginSuccessAction action) {
  return state.rebuild((b) => b
    ..user = action.user.toBuilder()
    ..isLoading = false
    ..loginError = false);
}

UserState _loginFailed(UserState state, LoginFailedAction action) {
  return state.rebuild((b) => b
    ..isLoading = false
    ..loginError = false);
}

UserState _startLoading(UserState state, StartLoadingAction action) {
  return state.rebuild((b) => b
    ..isLoading = true
    ..loginError = false);
}