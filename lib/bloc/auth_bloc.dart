import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban/common/resulting/failure.dart';
import 'package:kanban/common/resulting/result.dart';
import 'package:kanban/data/models/token.dart';
import 'package:kanban/data/repositories/authentication_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@lazySingleton
class AuthBloc extends HydratedBloc<AuthEvent, AuthState> {
  final AuthenticationRepository _repository;
  AuthBloc(this._repository) : super(const AuthState.initial()) {
    on<SignIn>(_onSignIn);

    on<LogOut>(_onLogOut);
  }

  Future<void> _onSignIn(SignIn event, Emitter<AuthState> emit) async {
    emit(const AuthState.tokenRequested());

    final result = await _repository.getToken(event.username, event.password);

    if (result.isSuccessful) {
      emit(AuthState.tokenReceived(result.value));
      //print((result.value as Token).value);
    } else {
      emit(AuthState.failure(result.failures.first));
    }
  }

  void _onLogOut(LogOut event, Emitter<AuthState> emit) {
    emit(const AuthState.initial());
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    final token = json['token'];

    if (token == null) {
      return const AuthState.initial();
    } else {
      return AuthState.tokenReceived(Token(token));
    }
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    final token = state is AuthTokenReceived ? state.token.value : null;
    return {'token': token};
  }
}
