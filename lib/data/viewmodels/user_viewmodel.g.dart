// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_viewmodel.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserViewModel extends UserViewModel {
  @override
  final Function(String firstname, String lastname) onFetchUser;
  @override
  final String firstname;
  @override
  final bool isLoading;

  factory _$UserViewModel([void Function(UserViewModelBuilder)? updates]) =>
      (new UserViewModelBuilder()..update(updates)).build();

  _$UserViewModel._(
      {required this.onFetchUser,
      required this.firstname,
      required this.isLoading})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        onFetchUser, 'UserViewModel', 'onFetchUser');
    BuiltValueNullFieldError.checkNotNull(
        firstname, 'UserViewModel', 'firstname');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, 'UserViewModel', 'isLoading');
  }

  @override
  UserViewModel rebuild(void Function(UserViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserViewModelBuilder toBuilder() => new UserViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is UserViewModel &&
        onFetchUser == _$dynamicOther.onFetchUser &&
        firstname == other.firstname &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, onFetchUser.hashCode), firstname.hashCode),
        isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserViewModel')
          ..add('onFetchUser', onFetchUser)
          ..add('firstname', firstname)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class UserViewModelBuilder
    implements Builder<UserViewModel, UserViewModelBuilder> {
  _$UserViewModel? _$v;

  Function(String firstname, String lastname)? _onFetchUser;
  Function(String firstname, String lastname)? get onFetchUser =>
      _$this._onFetchUser;
  set onFetchUser(Function(String firstname, String lastname)? onFetchUser) =>
      _$this._onFetchUser = onFetchUser;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  UserViewModelBuilder();

  UserViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _onFetchUser = $v.onFetchUser;
      _firstname = $v.firstname;
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserViewModel;
  }

  @override
  void update(void Function(UserViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserViewModel build() {
    final _$result = _$v ??
        new _$UserViewModel._(
            onFetchUser: BuiltValueNullFieldError.checkNotNull(
                onFetchUser, 'UserViewModel', 'onFetchUser'),
            firstname: BuiltValueNullFieldError.checkNotNull(
                firstname, 'UserViewModel', 'firstname'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, 'UserViewModel', 'isLoading'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
