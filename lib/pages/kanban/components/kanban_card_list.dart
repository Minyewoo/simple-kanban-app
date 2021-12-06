import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban/bloc/auth_bloc.dart';
import 'package:kanban/bloc/cards_bloc.dart';
import 'package:kanban/data/models/kanban_card.dart';
import 'package:kanban/data/repositories/cards_repository.dart';
import 'package:kanban/di/injection.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'kanban_list_view.dart';

class KanbanCardList extends StatelessWidget {
  final KanbanRow? row;
  const KanbanCardList({Key? key, this.row}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return BlocProvider<CardsBloc>(
      create: (context) =>
          CardsBloc(getIt<CardsRepository>(), getIt<AuthBloc>(), row: row),
      child: BlocConsumer<CardsBloc, CardsState>(
        listener: (context, state) {
          if (state is CardsFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.failure.type),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is CardsInitial) {
            context.read<CardsBloc>().add(const GetCards());
          }

          Widget content = Center(child: Text(localizations!.smthWentWrong));

          if (state is CardsRequested) {
            content = const Center(child: CircularProgressIndicator());
          }

          if (state is CardsLoaded) {
            content = RefreshIndicator(
              onRefresh: () => Future(
                () => context.read<CardsBloc>().add(const GetCards()),
              ),
              child: KanbanListView(
                padding: const EdgeInsets.all(8.0),
                cards: state.cards,
                idLabel: localizations.id,
              ),
            );
          }
          return content;
        },
      ),
    );
  }
}
