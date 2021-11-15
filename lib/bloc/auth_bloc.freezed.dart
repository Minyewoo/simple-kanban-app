// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  SignIn signIn(String username, String password) {
    return SignIn(
      username,
      password,
    );
  }

  LogOut logOut() {
    return const LogOut();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(LogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(LogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $SignInCopyWith<$Res> {
  factory $SignInCopyWith(SignIn value, $Res Function(SignIn) then) =
      _$SignInCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$SignInCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignInCopyWith<$Res> {
  _$SignInCopyWithImpl(SignIn _value, $Res Function(SignIn) _then)
      : super(_value, (v) => _then(v as SignIn));

  @override
  SignIn get _value => super._value as SignIn;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(SignIn(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignIn implements SignIn {
  const _$SignIn(this.username, this.password);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signIn(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignIn &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  $SignInCopyWith<SignIn> get copyWith =>
      _$SignInCopyWithImpl<SignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function() logOut,
  }) {
    return signIn(username, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? logOut,
  }) {
    return signIn?.call(username, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(username, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(LogOut value) logOut,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(LogOut value)? logOut,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements AuthEvent {
  const factory SignIn(String username, String password) = _$SignIn;

  String get username;
  String get password;
  @JsonKey(ignore: true)
  $SignInCopyWith<SignIn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogOutCopyWith<$Res> {
  factory $LogOutCopyWith(LogOut value, $Res Function(LogOut) then) =
      _$LogOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $LogOutCopyWith<$Res> {
  _$LogOutCopyWithImpl(LogOut _value, $Res Function(LogOut) _then)
      : super(_value, (v) => _then(v as LogOut));

  @override
  LogOut get _value => super._value as LogOut;
}

/// @nodoc

class _$LogOut implements LogOut {
  const _$LogOut();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LogOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username, String password) signIn,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username, String password)? signIn,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(LogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(LogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOut implements AuthEvent {
  const factory LogOut() = _$LogOut;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthInitial initial() {
    return const AuthInitial();
  }

  AuthTokenRequested tokenRequested() {
    return const AuthTokenRequested();
  }

  AuthTokenReceived tokenReceived(Token token) {
    return AuthTokenReceived(
      token,
    );
  }

  AuthFailure failure(AbstractFailure failure) {
    return AuthFailure(
      failure,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() tokenRequested,
    required TResult Function(Token token) tokenReceived,
    required TResult Function(AbstractFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? tokenRequested,
    TResult Function(Token token)? tokenReceived,
    TResult Function(AbstractFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? tokenRequested,
    TResult Function(Token token)? tokenReceived,
    TResult Function(AbstractFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthTokenRequested value) tokenRequested,
    required TResult Function(AuthTokenReceived value) tokenReceived,
    required TResult Function(AuthFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthTokenRequested value)? tokenRequested,
    TResult Function(AuthTokenReceived value)? tokenReceived,
    TResult Function(AuthFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthTokenRequested value)? tokenRequested,
    TResult Function(AuthTokenReceived value)? tokenReceived,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthInitialCopyWith<$Res> {
  factory $AuthInitialCopyWith(
          AuthInitial value, $Res Function(AuthInitial) then) =
      _$AuthInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthInitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthInitialCopyWith<$Res> {
  _$AuthInitialCopyWithImpl(
      AuthInitial _value, $Res Function(AuthInitial) _then)
      : super(_value, (v) => _then(v as AuthInitial));

  @override
  AuthInitial get _value => super._value as AuthInitial;
}

/// @nodoc

class _$AuthInitial implements AuthInitial {
  const _$AuthInitial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() tokenRequested,
    required TResult Function(Token token) tokenReceived,
    required TResult Function(AbstractFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? tokenRequested,
    TResult Function(Token token)? tokenReceived,
    TResult Function(AbstractFailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? tokenRequested,
    TResult Function(Token token)? tokenReceived,
    TResult Function(AbstractFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthTokenRequested value) tokenRequested,
    required TResult Function(AuthTokenReceived value) tokenReceived,
    required TResult Function(AuthFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthTokenRequested value)? tokenRequested,
    TResult Function(AuthTokenReceived value)? tokenReceived,
    TResult Function(AuthFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthTokenRequested value)? tokenRequested,
    TResult Function(AuthTokenReceived value)? tokenReceived,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitial implements AuthState {
  const factory AuthInitial() = _$AuthInitial;
}

/// @nodoc
abstract class $AuthTokenRequestedCopyWith<$Res> {
  factory $AuthTokenRequestedCopyWith(
          AuthTokenRequested value, $Res Function(AuthTokenRequested) then) =
      _$AuthTokenRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthTokenRequestedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthTokenRequestedCopyWith<$Res> {
  _$AuthTokenRequestedCopyWithImpl(
      AuthTokenRequested _value, $Res Function(AuthTokenRequested) _then)
      : super(_value, (v) => _then(v as AuthTokenRequested));

  @override
  AuthTokenRequested get _value => super._value as AuthTokenRequested;
}

/// @nodoc

class _$AuthTokenRequested implements AuthTokenRequested {
  const _$AuthTokenRequested();

  @override
  String toString() {
    return 'AuthState.tokenRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthTokenRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() tokenRequested,
    required TResult Function(Token token) tokenReceived,
    required TResult Function(AbstractFailure failure) failure,
  }) {
    return tokenRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? tokenRequested,
    TResult Function(Token token)? tokenReceived,
    TResult Function(AbstractFailure failure)? failure,
  }) {
    return tokenRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? tokenRequested,
    TResult Function(Token token)? tokenReceived,
    TResult Function(AbstractFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (tokenRequested != null) {
      return tokenRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthTokenRequested value) tokenRequested,
    required TResult Function(AuthTokenReceived value) tokenReceived,
    required TResult Function(AuthFailure value) failure,
  }) {
    return tokenRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthTokenRequested value)? tokenRequested,
    TResult Function(AuthTokenReceived value)? tokenReceived,
    TResult Function(AuthFailure value)? failure,
  }) {
    return tokenRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthTokenRequested value)? tokenRequested,
    TResult Function(AuthTokenReceived value)? tokenReceived,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (tokenRequested != null) {
      return tokenRequested(this);
    }
    return orElse();
  }
}

abstract class AuthTokenRequested implements AuthState {
  const factory AuthTokenRequested() = _$AuthTokenRequested;
}

/// @nodoc
abstract class $AuthTokenReceivedCopyWith<$Res> {
  factory $AuthTokenReceivedCopyWith(
          AuthTokenReceived value, $Res Function(AuthTokenReceived) then) =
      _$AuthTokenReceivedCopyWithImpl<$Res>;
  $Res call({Token token});
}

/// @nodoc
class _$AuthTokenReceivedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthTokenReceivedCopyWith<$Res> {
  _$AuthTokenReceivedCopyWithImpl(
      AuthTokenReceived _value, $Res Function(AuthTokenReceived) _then)
      : super(_value, (v) => _then(v as AuthTokenReceived));

  @override
  AuthTokenReceived get _value => super._value as AuthTokenReceived;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(AuthTokenReceived(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
    ));
  }
}

/// @nodoc

class _$AuthTokenReceived implements AuthTokenReceived {
  const _$AuthTokenReceived(this.token);

  @override
  final Token token;

  @override
  String toString() {
    return 'AuthState.tokenReceived(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthTokenReceived &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  $AuthTokenReceivedCopyWith<AuthTokenReceived> get copyWith =>
      _$AuthTokenReceivedCopyWithImpl<AuthTokenReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() tokenRequested,
    required TResult Function(Token token) tokenReceived,
    required TResult Function(AbstractFailure failure) failure,
  }) {
    return tokenReceived(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? tokenRequested,
    TResult Function(Token token)? tokenReceived,
    TResult Function(AbstractFailure failure)? failure,
  }) {
    return tokenReceived?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? tokenRequested,
    TResult Function(Token token)? tokenReceived,
    TResult Function(AbstractFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (tokenReceived != null) {
      return tokenReceived(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthTokenRequested value) tokenRequested,
    required TResult Function(AuthTokenReceived value) tokenReceived,
    required TResult Function(AuthFailure value) failure,
  }) {
    return tokenReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthTokenRequested value)? tokenRequested,
    TResult Function(AuthTokenReceived value)? tokenReceived,
    TResult Function(AuthFailure value)? failure,
  }) {
    return tokenReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthTokenRequested value)? tokenRequested,
    TResult Function(AuthTokenReceived value)? tokenReceived,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (tokenReceived != null) {
      return tokenReceived(this);
    }
    return orElse();
  }
}

abstract class AuthTokenReceived implements AuthState {
  const factory AuthTokenReceived(Token token) = _$AuthTokenReceived;

  Token get token;
  @JsonKey(ignore: true)
  $AuthTokenReceivedCopyWith<AuthTokenReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
  $Res call({AbstractFailure failure});
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(
      AuthFailure _value, $Res Function(AuthFailure) _then)
      : super(_value, (v) => _then(v as AuthFailure));

  @override
  AuthFailure get _value => super._value as AuthFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(AuthFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AbstractFailure,
    ));
  }
}

/// @nodoc

class _$AuthFailure implements AuthFailure {
  const _$AuthFailure(this.failure);

  @override
  final AbstractFailure failure;

  @override
  String toString() {
    return 'AuthState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $AuthFailureCopyWith<AuthFailure> get copyWith =>
      _$AuthFailureCopyWithImpl<AuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() tokenRequested,
    required TResult Function(Token token) tokenReceived,
    required TResult Function(AbstractFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? tokenRequested,
    TResult Function(Token token)? tokenReceived,
    TResult Function(AbstractFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? tokenRequested,
    TResult Function(Token token)? tokenReceived,
    TResult Function(AbstractFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) initial,
    required TResult Function(AuthTokenRequested value) tokenRequested,
    required TResult Function(AuthTokenReceived value) tokenReceived,
    required TResult Function(AuthFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthTokenRequested value)? tokenRequested,
    TResult Function(AuthTokenReceived value)? tokenReceived,
    TResult Function(AuthFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? initial,
    TResult Function(AuthTokenRequested value)? tokenRequested,
    TResult Function(AuthTokenReceived value)? tokenReceived,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements AuthState {
  const factory AuthFailure(AbstractFailure failure) = _$AuthFailure;

  AbstractFailure get failure;
  @JsonKey(ignore: true)
  $AuthFailureCopyWith<AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
