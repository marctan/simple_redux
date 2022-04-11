import 'package:equatable/equatable.dart';
import 'package:simple_redux/data/user.dart';
import 'package:simple_redux/domain/user_state.dart';

class AppState extends Equatable {
  final UserState userState;

  const AppState({required this.userState});

  factory AppState.initial() {
    return AppState(
      userState: UserState.initial(),
    );
  }

  AppState copyWith({UserState? userState}) {
    return AppState(userState: userState ?? this.userState);
  }

  @override
  List<Object?> get props => [userState];
}
