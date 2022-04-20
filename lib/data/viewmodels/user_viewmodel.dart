import 'package:built_value/built_value.dart';
import 'package:redux/redux.dart';
import 'package:simple_redux/domain/action.dart';
import 'package:simple_redux/domain/app_statebv.dart';

part 'user_viewmodel.g.dart';

abstract class UserViewModel
    implements Built<UserViewModel, UserViewModelBuilder> {
  UserViewModel._();

  Function(String firstname, String lastname) get onFetchUser;
  String get firstname;
  bool get isLoading;

  factory UserViewModel.fromStore(Store<AppState> store) {
    return UserViewModel((b) => b
      ..onFetchUser = (firstname, lastname) {
        store.dispatch(FetchUserMiddlewareAction((b) => b
          ..firstname = firstname
          ..lastname = lastname));
      }
      ..firstname = store.state.userState.user.firstname
      ..isLoading = store.state.userState.isLoading);
  }

  factory UserViewModel([Function(UserViewModelBuilder b) updates]) =
      _$UserViewModel;
}
