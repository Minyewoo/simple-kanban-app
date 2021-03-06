import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:kanban/bloc/auth_bloc.dart';
import 'package:kanban/data/models/kanban_card.dart';
import 'package:kanban/data/repositories/cards_repository.dart';
import 'package:kanban/common/resulting/failure.dart';
import 'package:kanban/common/resulting/result.dart';

part 'cards_event.dart';
part 'cards_state.dart';
part 'cards_bloc.freezed.dart';

class CardsBloc extends HydratedBloc<CardsEvent, CardsState> {
  final CardsRepository _repository;
  final AuthBloc _authBloc;
  final KanbanRow? row;

  CardsBloc(this._repository, this._authBloc, {this.row})
      : super(const CardsState.initial()) {
    on<GetCards>((event, emit) async {
      emit(const CardsState.requested());

      final state = _authBloc.state;
      if (state is AuthTokenReceived) {
        final result = await _repository.getCards(state.token, row: row);

        if (result.isSuccessful) {
          emit(CardsState.loaded(result.value));
        } else {
          emit(CardsState.failure(result.failures.first));
        }
      } else {
        final failure = Failure('Not authorized');
        emit(CardsState.failure(failure));
      }
    });
  }

  @override
  CardsState? fromJson(Map<String, dynamic> json) {
    final key = row != null ? row.toString() : 'cards';
    final jsonCards = json[key];

    if (jsonCards == null) {
      return const CardsState.initial();
    } else {
      var cards = (jsonCards as List<dynamic>)
          .map((json) => KanbanCard.fromJson(json))
          .toList();
      return CardsState.loaded(cards);
    }
  }

  @override
  Map<String, dynamic>? toJson(CardsState state) {
    final key = row != null ? row.toString() : 'cards';

    final cards = state is CardsLoaded
        ? state.cards.map((card) => card.toJson()).toList()
        : null;
    return {key: cards};
  }
}
