part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class LoadingLoginState extends AuthState {}

final class SuccessLoginState extends AuthState {}

final class ErrorLoginState extends AuthState {
  final String error;

  ErrorLoginState({required this.error});
}

final class LoadingCreateAccountState extends AuthState {}

final class SuccessCreateAccountState extends AuthState {}

final class ErrorCreateAccountState extends AuthState {
  final String error;

  ErrorCreateAccountState({required this.error});
}