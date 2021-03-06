// Mocks generated by Mockito 5.1.0 from annotations
// in simple_redux/test/middleware_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:simple_redux/data/model/userbv.dart' as _i2;
import 'package:simple_redux/data/repo/user_repository.dart' as _i3;
import 'package:simple_redux/domain/action.dart' as _i5;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeBuiltUser_0 extends _i1.Fake implements _i2.BuiltUser {}

/// A class which mocks [AbstractUserRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAbstractUserRepository extends _i1.Mock
    implements _i3.AbstractUserRepository {
  MockAbstractUserRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.BuiltUser> fetchUser(_i5.FetchUserMiddlewareAction? action) =>
      (super.noSuchMethod(Invocation.method(#fetchUser, [action]),
              returnValue: Future<_i2.BuiltUser>.value(_FakeBuiltUser_0()))
          as _i4.Future<_i2.BuiltUser>);
}
