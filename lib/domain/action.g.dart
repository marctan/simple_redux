// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartLoadingAction extends StartLoadingAction {
  factory _$StartLoadingAction(
          [void Function(StartLoadingActionBuilder)? updates]) =>
      (new StartLoadingActionBuilder()..update(updates)).build();

  _$StartLoadingAction._() : super._();

  @override
  StartLoadingAction rebuild(
          void Function(StartLoadingActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartLoadingActionBuilder toBuilder() =>
      new StartLoadingActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartLoadingAction;
  }

  @override
  int get hashCode {
    return 53042708;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('StartLoadingAction').toString();
  }
}

class StartLoadingActionBuilder
    implements Builder<StartLoadingAction, StartLoadingActionBuilder> {
  _$StartLoadingAction? _$v;

  StartLoadingActionBuilder();

  @override
  void replace(StartLoadingAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartLoadingAction;
  }

  @override
  void update(void Function(StartLoadingActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StartLoadingAction build() {
    final _$result = _$v ?? new _$StartLoadingAction._();
    replace(_$result);
    return _$result;
  }
}

class _$LoginFailedAction extends LoginFailedAction {
  factory _$LoginFailedAction(
          [void Function(LoginFailedActionBuilder)? updates]) =>
      (new LoginFailedActionBuilder()..update(updates)).build();

  _$LoginFailedAction._() : super._();

  @override
  LoginFailedAction rebuild(void Function(LoginFailedActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginFailedActionBuilder toBuilder() =>
      new LoginFailedActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginFailedAction;
  }

  @override
  int get hashCode {
    return 866752880;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('LoginFailedAction').toString();
  }
}

class LoginFailedActionBuilder
    implements Builder<LoginFailedAction, LoginFailedActionBuilder> {
  _$LoginFailedAction? _$v;

  LoginFailedActionBuilder();

  @override
  void replace(LoginFailedAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginFailedAction;
  }

  @override
  void update(void Function(LoginFailedActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginFailedAction build() {
    final _$result = _$v ?? new _$LoginFailedAction._();
    replace(_$result);
    return _$result;
  }
}

class _$LoginSuccessAction extends LoginSuccessAction {
  @override
  final BuiltUser user;

  factory _$LoginSuccessAction(
          [void Function(LoginSuccessActionBuilder)? updates]) =>
      (new LoginSuccessActionBuilder()..update(updates)).build();

  _$LoginSuccessAction._({required this.user}) : super._() {
    BuiltValueNullFieldError.checkNotNull(user, 'LoginSuccessAction', 'user');
  }

  @override
  LoginSuccessAction rebuild(
          void Function(LoginSuccessActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginSuccessActionBuilder toBuilder() =>
      new LoginSuccessActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginSuccessAction && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginSuccessAction')
          ..add('user', user))
        .toString();
  }
}

class LoginSuccessActionBuilder
    implements Builder<LoginSuccessAction, LoginSuccessActionBuilder> {
  _$LoginSuccessAction? _$v;

  BuiltUserBuilder? _user;
  BuiltUserBuilder get user => _$this._user ??= new BuiltUserBuilder();
  set user(BuiltUserBuilder? user) => _$this._user = user;

  LoginSuccessActionBuilder();

  LoginSuccessActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginSuccessAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginSuccessAction;
  }

  @override
  void update(void Function(LoginSuccessActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginSuccessAction build() {
    _$LoginSuccessAction _$result;
    try {
      _$result = _$v ?? new _$LoginSuccessAction._(user: user.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoginSuccessAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FetchItemAction extends FetchItemAction {
  @override
  final String firstname;
  @override
  final String lastname;

  factory _$FetchItemAction([void Function(FetchItemActionBuilder)? updates]) =>
      (new FetchItemActionBuilder()..update(updates)).build();

  _$FetchItemAction._({required this.firstname, required this.lastname})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstname, 'FetchItemAction', 'firstname');
    BuiltValueNullFieldError.checkNotNull(
        lastname, 'FetchItemAction', 'lastname');
  }

  @override
  FetchItemAction rebuild(void Function(FetchItemActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FetchItemActionBuilder toBuilder() =>
      new FetchItemActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FetchItemAction &&
        firstname == other.firstname &&
        lastname == other.lastname;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, firstname.hashCode), lastname.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FetchItemAction')
          ..add('firstname', firstname)
          ..add('lastname', lastname))
        .toString();
  }
}

class FetchItemActionBuilder
    implements Builder<FetchItemAction, FetchItemActionBuilder> {
  _$FetchItemAction? _$v;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  FetchItemActionBuilder();

  FetchItemActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FetchItemAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FetchItemAction;
  }

  @override
  void update(void Function(FetchItemActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FetchItemAction build() {
    final _$result = _$v ??
        new _$FetchItemAction._(
            firstname: BuiltValueNullFieldError.checkNotNull(
                firstname, 'FetchItemAction', 'firstname'),
            lastname: BuiltValueNullFieldError.checkNotNull(
                lastname, 'FetchItemAction', 'lastname'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
