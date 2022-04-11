import 'package:simple_redux/data/user.dart';

class StartLoadingAction {}

class LoginFailedAction {}

class LoginSuccessAction {
  final User user;

  LoginSuccessAction(this.user);
}
