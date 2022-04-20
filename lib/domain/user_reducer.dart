import 'package:redux/redux.dart';
import 'package:simple_redux/domain/action.dart';
import 'package:simple_redux/domain/user_statebv.dart';

final userReducer = combineReducers<UserState>(
  [
    TypedReducer<UserState, FetchUserSuccessAction>(_fetchSuccess),
    TypedReducer<UserState, FetchUserFailedAction>(_fetchFailed),
    TypedReducer<UserState, FetchUserLoadingAction>(_startLoading),
  ],
);

UserState _fetchSuccess(UserState state, FetchUserSuccessAction action) {
  return state.rebuild((b) => b
    ..user = action.user.toBuilder()
    ..isLoading = false
    ..error = false);
}

UserState _fetchFailed(UserState state, FetchUserFailedAction action) {
  return state.rebuild((b) => b
    ..isLoading = false
    ..error = true);
}

UserState _startLoading(UserState state, FetchUserLoadingAction action) {
  return state.rebuild((b) => b
    ..isLoading = true
    ..error = false);
}