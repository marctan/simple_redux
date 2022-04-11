import 'package:equatable/equatable.dart';
import 'package:simple_redux/data/user.dart';

class UserState extends Equatable {
  final bool isLoading;
  final bool loginError;
  final User user;

  const UserState({
    required this.isLoading,
    required this.loginError,
    required this.user,
  });

  factory UserState.initial() {
    return UserState(
      isLoading: false,
      loginError: false,
      user: User.initial(),
    );
  }

  UserState copyWith({bool? isLoading, bool? loginError, User? user}) {
    return UserState(
      isLoading: isLoading ?? this.isLoading,
      loginError: loginError ?? this.loginError,
      user: user ?? this.user,
    );
  }

  @override
  List<Object?> get props => [isLoading, loginError, user];
}
