import 'package:built_value/built_value.dart';
import 'package:simple_redux/data/userbv.dart';

part 'user_statebv.g.dart';

abstract class UserState implements Built<UserState, UserStateBuilder> {
  bool get isLoading;
  bool get loginError;
  BuiltUser get user;

  factory UserState.initial() {
    return UserState((b) => b
      ..isLoading = false
      ..loginError = false
      ..user = BuiltUser.initial().toBuilder());
  }

  UserState._();

  factory UserState([Function(UserStateBuilder b) updates]) = _$UserState;
}
