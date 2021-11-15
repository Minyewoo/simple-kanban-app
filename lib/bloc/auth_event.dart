part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn(String username, String password) = SignIn;
  const factory AuthEvent.logOut() = LogOut;
}