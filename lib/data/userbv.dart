import 'package:built_value/built_value.dart';

part 'userbv.g.dart';

abstract class BuiltUser implements Built<BuiltUser, BuiltUserBuilder> {
  String get firstname;
  String get lastname;

  BuiltUser._();

  factory BuiltUser.initial() {
    return BuiltUser((b) => b
      ..firstname = ''
      ..lastname = '');
  }

  factory BuiltUser([Function(BuiltUserBuilder b) updates]) = _$BuiltUser;
}
