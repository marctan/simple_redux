// import 'package:simple_redux/data/userbv.dart';

// class StartLoadingAction {}

// class LoginFailedAction {}

// class LoginSuccessAction {
//   final BuiltUser user;

//   LoginSuccessAction(this.user);
// }

// class FetchItemAction {
//   final String firstname;
//   final String lastname;
//   FetchItemAction(this.firstname, this.lastname);
// }

import 'package:built_value/built_value.dart';
import 'package:simple_redux/data/userbv.dart';
part 'action.g.dart';

abstract class UserAction {}

abstract class StartLoadingAction
    implements
        Built<StartLoadingAction, StartLoadingActionBuilder>,
        UserAction {
  StartLoadingAction._();

  factory StartLoadingAction([Function(StartLoadingActionBuilder b) updates]) =
      _$StartLoadingAction;
}

abstract class LoginFailedAction
    implements Built<LoginFailedAction, LoginFailedActionBuilder>, UserAction {
  LoginFailedAction._();

  factory LoginFailedAction([Function(LoginFailedActionBuilder b) updates]) =
      _$LoginFailedAction;
}

abstract class LoginSuccessAction
    implements
        Built<LoginSuccessAction, LoginSuccessActionBuilder>,
        UserAction {
  LoginSuccessAction._();

  BuiltUser get user;

  factory LoginSuccessAction([Function(LoginSuccessActionBuilder b) updates]) =
      _$LoginSuccessAction;
}

abstract class FetchItemAction
    implements Built<FetchItemAction, FetchItemActionBuilder>, UserAction {
  FetchItemAction._();

  String get firstname;
  String get lastname;

  factory FetchItemAction([Function(FetchItemActionBuilder b) updates]) =
      _$FetchItemAction;
}
