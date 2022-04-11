import 'package:redux/redux.dart';
import 'package:simple_redux/domain/action.dart';
import 'package:simple_redux/domain/app_state.dart';
import 'package:simple_redux/domain/user_reducer.dart';

AppState reducer(AppState prevState, dynamic action) {
 return AppState(userState: userReducer(prevState.userState, action));
}