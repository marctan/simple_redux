import 'package:built_value/built_value.dart';
import 'package:simple_redux/domain/user_statebv.dart';

part 'app_statebv.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  UserState get userState;

  factory AppState.initial() {
    return AppState((b) => b..userState = UserState.initial().toBuilder());
  }
  AppState._();

  factory AppState([Function(AppStateBuilder b) updates]) = _$AppState;
}
