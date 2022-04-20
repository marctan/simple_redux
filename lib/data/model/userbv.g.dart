// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userbv.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BuiltUser extends BuiltUser {
  @override
  final String firstname;
  @override
  final String lastname;

  factory _$BuiltUser([void Function(BuiltUserBuilder)? updates]) =>
      (new BuiltUserBuilder()..update(updates)).build();

  _$BuiltUser._({required this.firstname, required this.lastname}) : super._() {
    BuiltValueNullFieldError.checkNotNull(firstname, 'BuiltUser', 'firstname');
    BuiltValueNullFieldError.checkNotNull(lastname, 'BuiltUser', 'lastname');
  }

  @override
  BuiltUser rebuild(void Function(BuiltUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltUserBuilder toBuilder() => new BuiltUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltUser &&
        firstname == other.firstname &&
        lastname == other.lastname;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, firstname.hashCode), lastname.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BuiltUser')
          ..add('firstname', firstname)
          ..add('lastname', lastname))
        .toString();
  }
}

class BuiltUserBuilder implements Builder<BuiltUser, BuiltUserBuilder> {
  _$BuiltUser? _$v;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  BuiltUserBuilder();

  BuiltUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltUser;
  }

  @override
  void update(void Function(BuiltUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltUser build() {
    final _$result = _$v ??
        new _$BuiltUser._(
            firstname: BuiltValueNullFieldError.checkNotNull(
                firstname, 'BuiltUser', 'firstname'),
            lastname: BuiltValueNullFieldError.checkNotNull(
                lastname, 'BuiltUser', 'lastname'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
