part of 'cards_bloc.dart';

@freezed
class CardsState with _$CardsState {
  const factory CardsState.initial() = CardsInitial;
  const factory CardsState.requested() = CardsRequested;
  const factory CardsState.loaded(List<KanbanCard> cards) = CardsLoaded;
  const factory CardsState.failure(AbstractFailure failure) = CardsFailure;
}
