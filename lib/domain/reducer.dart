import 'package:simple_redux/domain/app_statebv.dart';
import 'package:simple_redux/domain/user_reducer.dart';

AppState reducer(AppState prevState, dynamic action) {
  return AppState(
      (b) => b..userState = userReducer(prevState.userState, action).toBuilder());
}
