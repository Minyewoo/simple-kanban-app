part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.tokenRequested() = AuthTokenRequested;
  const factory AuthState.tokenReceived(Token token) = AuthTokenReceived;
  const factory AuthState.failure(AbstractFailure failure) = AuthFailure;
}
