import 'package:simple_redux/data/model/userbv.dart';
import 'package:simple_redux/domain/action.dart';

abstract class AbstractUserRepository {
  Future<BuiltUser> fetchUser(FetchUserMiddlewareAction action);
}

class UserRepository implements AbstractUserRepository {
  @override
  Future<BuiltUser> fetchUser(FetchUserMiddlewareAction action) async {
    //put delay to immitate fetching from the server
    await Future.delayed(const Duration(seconds: 2));
    return BuiltUser((b) => b
      ..firstname = action.firstname
      ..lastname = action.lastname);
  }
}
