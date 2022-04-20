// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FetchUserLoadingAction extends FetchUserLoadingAction {
  factory _$FetchUserLoadingAction(
          [void Function(FetchUserLoadingActionBuilder)? updates]) =>
      (new FetchUserLoadingActionBuilder()..update(updates)).build();

  _$FetchUserLoadingAction._() : super._();

  @override
  FetchUserLoadingAction rebuild(
          void Function(FetchUserLoadingActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FetchUserLoadingActionBuilder toBuilder() =>
      new FetchUserLoadingActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FetchUserLoadingAction;
  }

  @override
  int get hashCode {
    return 632689642;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('FetchUserLoadingAction').toString();
  }
}

class FetchUserLoadingActionBuilder
    implements Builder<FetchUserLoadingAction, FetchUserLoadingActionBuilder> {
  _$FetchUserLoadingAction? _$v;

  FetchUserLoadingActionBuilder();

  @override
  void replace(FetchUserLoadingAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FetchUserLoadingAction;
  }

  @override
  void update(void Function(FetchUserLoadingActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FetchUserLoadingAction build() {
    final _$result = _$v ?? new _$FetchUserLoadingAction._();
    replace(_$result);
    return _$result;
  }
}

class _$FetchUserFailedAction extends FetchUserFailedAction {
  factory _$FetchUserFailedAction(
          [void Function(FetchUserFailedActionBuilder)? updates]) =>
      (new FetchUserFailedActionBuilder()..update(updates)).build();

  _$FetchUserFailedAction._() : super._();

  @override
  FetchUserFailedAction rebuild(
          void Function(FetchUserFailedActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FetchUserFailedActionBuilder toBuilder() =>
      new FetchUserFailedActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FetchUserFailedAction;
  }

  @override
  int get hashCode {
    return 588036496;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('FetchUserFailedAction').toString();
  }
}

class FetchUserFailedActionBuilder
    implements Builder<FetchUserFailedAction, FetchUserFailedActionBuilder> {
  _$FetchUserFailedAction? _$v;

  FetchUserFailedActionBuilder();

  @override
  void replace(FetchUserFailedAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FetchUserFailedAction;
  }

  @override
  void update(void Function(FetchUserFailedActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FetchUserFailedAction build() {
    final _$result = _$v ?? new _$FetchUserFailedAction._();
    replace(_$result);
    return _$result;
  }
}

class _$FetchUserSuccessAction extends FetchUserSuccessAction {
  @override
  final BuiltUser user;

  factory _$FetchUserSuccessAction(
          [void Function(FetchUserSuccessActionBuilder)? updates]) =>
      (new FetchUserSuccessActionBuilder()..update(updates)).build();

  _$FetchUserSuccessAction._({required this.user}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        user, 'FetchUserSuccessAction', 'user');
  }

  @override
  FetchUserSuccessAction rebuild(
          void Function(FetchUserSuccessActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FetchUserSuccessActionBuilder toBuilder() =>
      new FetchUserSuccessActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FetchUserSuccessAction && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FetchUserSuccessAction')
          ..add('user', user))
        .toString();
  }
}

class FetchUserSuccessActionBuilder
    implements Builder<FetchUserSuccessAction, FetchUserSuccessActionBuilder> {
  _$FetchUserSuccessAction? _$v;

  BuiltUserBuilder? _user;
  BuiltUserBuilder get user => _$this._user ??= new BuiltUserBuilder();
  set user(BuiltUserBuilder? user) => _$this._user = user;

  FetchUserSuccessActionBuilder();

  FetchUserSuccessActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FetchUserSuccessAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FetchUserSuccessAction;
  }

  @override
  void update(void Function(FetchUserSuccessActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FetchUserSuccessAction build() {
    _$FetchUserSuccessAction _$result;
    try {
      _$result = _$v ?? new _$FetchUserSuccessAction._(user: user.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FetchUserSuccessAction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FetchUserMiddlewareAction extends FetchUserMiddlewareAction {
  @override
  final String firstname;
  @override
  final String lastname;

  factory _$FetchUserMiddlewareAction(
          [void Function(FetchUserMiddlewareActionBuilder)? updates]) =>
      (new FetchUserMiddlewareActionBuilder()..update(updates)).build();

  _$FetchUserMiddlewareAction._(
      {required this.firstname, required this.lastname})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firstname, 'FetchUserMiddlewareAction', 'firstname');
    BuiltValueNullFieldError.checkNotNull(
        lastname, 'FetchUserMiddlewareAction', 'lastname');
  }

  @override
  FetchUserMiddlewareAction rebuild(
          void Function(FetchUserMiddlewareActionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FetchUserMiddlewareActionBuilder toBuilder() =>
      new FetchUserMiddlewareActionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FetchUserMiddlewareAction &&
        firstname == other.firstname &&
        lastname == other.lastname;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, firstname.hashCode), lastname.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FetchUserMiddlewareAction')
          ..add('firstname', firstname)
          ..add('lastname', lastname))
        .toString();
  }
}

class FetchUserMiddlewareActionBuilder
    implements
        Builder<FetchUserMiddlewareAction, FetchUserMiddlewareActionBuilder> {
  _$FetchUserMiddlewareAction? _$v;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  FetchUserMiddlewareActionBuilder();

  FetchUserMiddlewareActionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FetchUserMiddlewareAction other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FetchUserMiddlewareAction;
  }

  @override
  void update(void Function(FetchUserMiddlewareActionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FetchUserMiddlewareAction build() {
    final _$result = _$v ??
        new _$FetchUserMiddlewareAction._(
            firstname: BuiltValueNullFieldError.checkNotNull(
                firstname, 'FetchUserMiddlewareAction', 'firstname'),
            lastname: BuiltValueNullFieldError.checkNotNull(
                lastname, 'FetchUserMiddlewareAction', 'lastname'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
