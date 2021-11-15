// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cards_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CardsEventTearOff {
  const _$CardsEventTearOff();

  GetCards getCards() {
    return const GetCards();
  }
}

/// @nodoc
const $CardsEvent = _$CardsEventTearOff();

/// @nodoc
mixin _$CardsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCards,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCards value) getCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsEventCopyWith<$Res> {
  factory $CardsEventCopyWith(
          CardsEvent value, $Res Function(CardsEvent) then) =
      _$CardsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardsEventCopyWithImpl<$Res> implements $CardsEventCopyWith<$Res> {
  _$CardsEventCopyWithImpl(this._value, this._then);

  final CardsEvent _value;
  // ignore: unused_field
  final $Res Function(CardsEvent) _then;
}

/// @nodoc
abstract class $GetCardsCopyWith<$Res> {
  factory $GetCardsCopyWith(GetCards value, $Res Function(GetCards) then) =
      _$GetCardsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCardsCopyWithImpl<$Res> extends _$CardsEventCopyWithImpl<$Res>
    implements $GetCardsCopyWith<$Res> {
  _$GetCardsCopyWithImpl(GetCards _value, $Res Function(GetCards) _then)
      : super(_value, (v) => _then(v as GetCards));

  @override
  GetCards get _value => super._value as GetCards;
}

/// @nodoc

class _$GetCards implements GetCards {
  const _$GetCards();

  @override
  String toString() {
    return 'CardsEvent.getCards()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCards);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCards,
  }) {
    return getCards();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getCards,
  }) {
    return getCards?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCards,
    required TResult orElse(),
  }) {
    if (getCards != null) {
      return getCards();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCards value) getCards,
  }) {
    return getCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
  }) {
    return getCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCards value)? getCards,
    required TResult orElse(),
  }) {
    if (getCards != null) {
      return getCards(this);
    }
    return orElse();
  }
}

abstract class GetCards implements CardsEvent {
  const factory GetCards() = _$GetCards;
}

/// @nodoc
class _$CardsStateTearOff {
  const _$CardsStateTearOff();

  CardsInitial initial() {
    return const CardsInitial();
  }

  CardsRequested requested() {
    return const CardsRequested();
  }

  CardsLoaded loaded(List<KanbanCard> cards) {
    return CardsLoaded(
      cards,
    );
  }

  CardsFailure failure(AbstractFailure failure) {
    return CardsFailure(
      failure,
    );
  }
}

/// @nodoc
const $CardsState = _$CardsStateTearOff();

/// @nodoc
mixin _$CardsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requested,
    required TResult Function(List<KanbanCard> cards) loaded,
    required TResult Function(AbstractFailure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requested,
    TResult Function(List<KanbanCard> cards)? loaded,
    TResult Function(AbstractFailure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requested,
    TResult Function(List<KanbanCard> cards)? loaded,
    TResult Function(AbstractFailure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardsInitial value) initial,
    required TResult Function(CardsRequested value) requested,
    required TResult Function(CardsLoaded value) loaded,
    required TResult Function(CardsFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CardsInitial value)? initial,
    TResult Function(CardsRequested value)? requested,
    TResult Function(CardsLoaded value)? loaded,
    TResult Function(CardsFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsInitial value)? initial,
    TResult Function(CardsRequested value)? requested,
    TResult Function(CardsLoaded value)? loaded,
    TResult Function(CardsFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsStateCopyWith<$Res> {
  factory $CardsStateCopyWith(
          CardsState value, $Res Function(CardsState) then) =
      _$CardsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardsStateCopyWithImpl<$Res> implements $CardsStateCopyWith<$Res> {
  _$CardsStateCopyWithImpl(this._value, this._then);

  final CardsState _value;
  // ignore: unused_field
  final $Res Function(CardsState) _then;
}

/// @nodoc
abstract class $CardsInitialCopyWith<$Res> {
  factory $CardsInitialCopyWith(
          CardsInitial value, $Res Function(CardsInitial) then) =
      _$CardsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardsInitialCopyWithImpl<$Res> extends _$CardsStateCopyWithImpl<$Res>
    implements $CardsInitialCopyWith<$Res> {
  _$CardsInitialCopyWithImpl(
      CardsInitial _value, $Res Function(CardsInitial) _then)
      : super(_value, (v) => _then(v as CardsInitial));

  @override
  CardsInitial get _value => super._value as CardsInitial;
}

/// @nodoc

class _$CardsInitial implements CardsInitial {
  const _$CardsInitial();

  @override
  String toString() {
    return 'CardsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CardsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requested,
    required TResult Function(List<KanbanCard> cards) loaded,
    required TResult Function(AbstractFailure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requested,
    TResult Function(List<KanbanCard> cards)? loaded,
    TResult Function(AbstractFailure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requested,
    TResult Function(List<KanbanCard> cards)? loaded,
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
    required TResult Function(CardsInitial value) initial,
    required TResult Function(CardsRequested value) requested,
    required TResult Function(CardsLoaded value) loaded,
    required TResult Function(CardsFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CardsInitial value)? initial,
    TResult Function(CardsRequested value)? requested,
    TResult Function(CardsLoaded value)? loaded,
    TResult Function(CardsFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsInitial value)? initial,
    TResult Function(CardsRequested value)? requested,
    TResult Function(CardsLoaded value)? loaded,
    TResult Function(CardsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CardsInitial implements CardsState {
  const factory CardsInitial() = _$CardsInitial;
}

/// @nodoc
abstract class $CardsRequestedCopyWith<$Res> {
  factory $CardsRequestedCopyWith(
          CardsRequested value, $Res Function(CardsRequested) then) =
      _$CardsRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardsRequestedCopyWithImpl<$Res> extends _$CardsStateCopyWithImpl<$Res>
    implements $CardsRequestedCopyWith<$Res> {
  _$CardsRequestedCopyWithImpl(
      CardsRequested _value, $Res Function(CardsRequested) _then)
      : super(_value, (v) => _then(v as CardsRequested));

  @override
  CardsRequested get _value => super._value as CardsRequested;
}

/// @nodoc

class _$CardsRequested implements CardsRequested {
  const _$CardsRequested();

  @override
  String toString() {
    return 'CardsState.requested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CardsRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requested,
    required TResult Function(List<KanbanCard> cards) loaded,
    required TResult Function(AbstractFailure failure) failure,
  }) {
    return requested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requested,
    TResult Function(List<KanbanCard> cards)? loaded,
    TResult Function(AbstractFailure failure)? failure,
  }) {
    return requested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requested,
    TResult Function(List<KanbanCard> cards)? loaded,
    TResult Function(AbstractFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardsInitial value) initial,
    required TResult Function(CardsRequested value) requested,
    required TResult Function(CardsLoaded value) loaded,
    required TResult Function(CardsFailure value) failure,
  }) {
    return requested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CardsInitial value)? initial,
    TResult Function(CardsRequested value)? requested,
    TResult Function(CardsLoaded value)? loaded,
    TResult Function(CardsFailure value)? failure,
  }) {
    return requested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsInitial value)? initial,
    TResult Function(CardsRequested value)? requested,
    TResult Function(CardsLoaded value)? loaded,
    TResult Function(CardsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (requested != null) {
      return requested(this);
    }
    return orElse();
  }
}

abstract class CardsRequested implements CardsState {
  const factory CardsRequested() = _$CardsRequested;
}

/// @nodoc
abstract class $CardsLoadedCopyWith<$Res> {
  factory $CardsLoadedCopyWith(
          CardsLoaded value, $Res Function(CardsLoaded) then) =
      _$CardsLoadedCopyWithImpl<$Res>;
  $Res call({List<KanbanCard> cards});
}

/// @nodoc
class _$CardsLoadedCopyWithImpl<$Res> extends _$CardsStateCopyWithImpl<$Res>
    implements $CardsLoadedCopyWith<$Res> {
  _$CardsLoadedCopyWithImpl(
      CardsLoaded _value, $Res Function(CardsLoaded) _then)
      : super(_value, (v) => _then(v as CardsLoaded));

  @override
  CardsLoaded get _value => super._value as CardsLoaded;

  @override
  $Res call({
    Object? cards = freezed,
  }) {
    return _then(CardsLoaded(
      cards == freezed
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<KanbanCard>,
    ));
  }
}

/// @nodoc

class _$CardsLoaded implements CardsLoaded {
  const _$CardsLoaded(this.cards);

  @override
  final List<KanbanCard> cards;

  @override
  String toString() {
    return 'CardsState.loaded(cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CardsLoaded &&
            const DeepCollectionEquality().equals(other.cards, cards));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cards));

  @JsonKey(ignore: true)
  @override
  $CardsLoadedCopyWith<CardsLoaded> get copyWith =>
      _$CardsLoadedCopyWithImpl<CardsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requested,
    required TResult Function(List<KanbanCard> cards) loaded,
    required TResult Function(AbstractFailure failure) failure,
  }) {
    return loaded(cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requested,
    TResult Function(List<KanbanCard> cards)? loaded,
    TResult Function(AbstractFailure failure)? failure,
  }) {
    return loaded?.call(cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requested,
    TResult Function(List<KanbanCard> cards)? loaded,
    TResult Function(AbstractFailure failure)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardsInitial value) initial,
    required TResult Function(CardsRequested value) requested,
    required TResult Function(CardsLoaded value) loaded,
    required TResult Function(CardsFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CardsInitial value)? initial,
    TResult Function(CardsRequested value)? requested,
    TResult Function(CardsLoaded value)? loaded,
    TResult Function(CardsFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsInitial value)? initial,
    TResult Function(CardsRequested value)? requested,
    TResult Function(CardsLoaded value)? loaded,
    TResult Function(CardsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CardsLoaded implements CardsState {
  const factory CardsLoaded(List<KanbanCard> cards) = _$CardsLoaded;

  List<KanbanCard> get cards;
  @JsonKey(ignore: true)
  $CardsLoadedCopyWith<CardsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsFailureCopyWith<$Res> {
  factory $CardsFailureCopyWith(
          CardsFailure value, $Res Function(CardsFailure) then) =
      _$CardsFailureCopyWithImpl<$Res>;
  $Res call({AbstractFailure failure});
}

/// @nodoc
class _$CardsFailureCopyWithImpl<$Res> extends _$CardsStateCopyWithImpl<$Res>
    implements $CardsFailureCopyWith<$Res> {
  _$CardsFailureCopyWithImpl(
      CardsFailure _value, $Res Function(CardsFailure) _then)
      : super(_value, (v) => _then(v as CardsFailure));

  @override
  CardsFailure get _value => super._value as CardsFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(CardsFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AbstractFailure,
    ));
  }
}

/// @nodoc

class _$CardsFailure implements CardsFailure {
  const _$CardsFailure(this.failure);

  @override
  final AbstractFailure failure;

  @override
  String toString() {
    return 'CardsState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CardsFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $CardsFailureCopyWith<CardsFailure> get copyWith =>
      _$CardsFailureCopyWithImpl<CardsFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requested,
    required TResult Function(List<KanbanCard> cards) loaded,
    required TResult Function(AbstractFailure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requested,
    TResult Function(List<KanbanCard> cards)? loaded,
    TResult Function(AbstractFailure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requested,
    TResult Function(List<KanbanCard> cards)? loaded,
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
    required TResult Function(CardsInitial value) initial,
    required TResult Function(CardsRequested value) requested,
    required TResult Function(CardsLoaded value) loaded,
    required TResult Function(CardsFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CardsInitial value)? initial,
    TResult Function(CardsRequested value)? requested,
    TResult Function(CardsLoaded value)? loaded,
    TResult Function(CardsFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsInitial value)? initial,
    TResult Function(CardsRequested value)? requested,
    TResult Function(CardsLoaded value)? loaded,
    TResult Function(CardsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class CardsFailure implements CardsState {
  const factory CardsFailure(AbstractFailure failure) = _$CardsFailure;

  AbstractFailure get failure;
  @JsonKey(ignore: true)
  $CardsFailureCopyWith<CardsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
