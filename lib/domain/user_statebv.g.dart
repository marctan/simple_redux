// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_statebv.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserState extends UserState {
  @override
  final bool isLoading;
  @override
  final bool loginError;
  @override
  final BuiltUser user;

  factory _$UserState([void Function(UserStateBuilder)? updates]) =>
      (new UserStateBuilder()..update(updates)).build();

  _$UserState._(
      {required this.isLoading, required this.loginError, required this.user})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, 'UserState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        loginError, 'UserState', 'loginError');
    BuiltValueNullFieldError.checkNotNull(user, 'UserState', 'user');
  }

  @override
  UserState rebuild(void Function(UserStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserStateBuilder toBuilder() => new UserStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserState &&
        isLoading == other.isLoading &&
        loginError == other.loginError &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, isLoading.hashCode), loginError.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserState')
          ..add('isLoading', isLoading)
          ..add('loginError', loginError)
          ..add('user', user))
        .toString();
  }
}

class UserStateBuilder implements Builder<UserState, UserStateBuilder> {
  _$UserState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _loginError;
  bool? get loginError => _$this._loginError;
  set loginError(bool? loginError) => _$this._loginError = loginError;

  BuiltUserBuilder? _user;
  BuiltUserBuilder get user => _$this._user ??= new BuiltUserBuilder();
  set user(BuiltUserBuilder? user) => _$this._user = user;

  UserStateBuilder();

  UserStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _loginError = $v.loginError;
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserState;
  }

  @override
  void update(void Function(UserStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserState build() {
    _$UserState _$result;
    try {
      _$result = _$v ??
          new _$UserState._(
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, 'UserState', 'isLoading'),
              loginError: BuiltValueNullFieldError.checkNotNull(
                  loginError, 'UserState', 'loginError'),
              user: user.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
