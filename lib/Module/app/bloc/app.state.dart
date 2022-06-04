import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AppState extends Equatable {
  int count;
  User user;

  AppState({
    this.count = 0,
  });

  AppState copyWith({
    int count,
  }) =>
      AppState(
        count: count ?? this.count,
      );

  @override
  List<Object> get props => [
        count,
      ];
}
