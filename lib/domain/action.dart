import 'package:built_value/built_value.dart';
import 'package:simple_redux/data/model/userbv.dart';
part 'action.g.dart';

abstract class UserAction {}

abstract class FetchUserLoadingAction
    implements
        Built<FetchUserLoadingAction, FetchUserLoadingActionBuilder>,
        UserAction {
  FetchUserLoadingAction._();

  factory FetchUserLoadingAction([Function(FetchUserLoadingActionBuilder b) updates]) =
      _$FetchUserLoadingAction;
}

abstract class FetchUserFailedAction
    implements Built<FetchUserFailedAction, FetchUserFailedActionBuilder>, UserAction {
  FetchUserFailedAction._();

  factory FetchUserFailedAction([Function(FetchUserFailedActionBuilder b) updates]) =
      _$FetchUserFailedAction;
}

abstract class FetchUserSuccessAction
    implements
        Built<FetchUserSuccessAction, FetchUserSuccessActionBuilder>,
        UserAction {
  FetchUserSuccessAction._();

  BuiltUser get user;

  factory FetchUserSuccessAction([Function(FetchUserSuccessActionBuilder b) updates]) =
      _$FetchUserSuccessAction;
}

abstract class FetchUserMiddlewareAction
    implements Built<FetchUserMiddlewareAction, FetchUserMiddlewareActionBuilder>, UserAction {
  FetchUserMiddlewareAction._();

  String get firstname;
  String get lastname;

  factory FetchUserMiddlewareAction([Function(FetchUserMiddlewareActionBuilder b) updates]) =
      _$FetchUserMiddlewareAction;
}
