import 'package:flutter/material.dart';
import "package:collection/collection.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban/bloc/auth_bloc.dart';
import 'package:kanban/bloc/cards_bloc.dart';
import 'package:kanban/data/models/kanban_card.dart';
import 'package:kanban/di/injection.dart';
import 'package:kanban/pages/kanban/components/kanban_list_view.dart';
import 'package:kanban/pages/kanban/components/labeled_tab_bar.dart';
import 'package:kanban/pages/kanban/components/log_out_button.dart';
import 'package:kanban/pages/login/login_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class KanbanPage extends StatefulWidget {
  static String routeName = '/kanban';
  const KanbanPage({Key? key}) : super(key: key);

  @override
  _KanbanPageState createState() => _KanbanPageState();
}

class _KanbanPageState extends State<KanbanPage> {
  final List<KanbanRow> tabIndexes = KanbanRow.values;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final localizedLabels = tabIndexes
        .map((row) => _mapKanbanRowToString(row, localizations!))
        .toList();

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthInitial) {
          Navigator.of(context).popAndPushNamed(LoginPage.routeName);
        }
      },
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
            getIt<CardsBloc>().add(const GetCards());
          }

          Widget content = Center(child: Text(localizations!.smthWentWrong));

          if (state is CardsRequested) {
            content = const Center(child: CircularProgressIndicator());
          }

          if (state is CardsLoaded) {
            final groupedCards =
                groupBy(state.cards, (KanbanCard card) => card.row);

            content = TabBarView(
              children: tabIndexes
                  .map(
                    (row) => RefreshIndicator(
                      onRefresh: () async =>
                          getIt<CardsBloc>().add(const GetCards()),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: KanbanListView(
                          cards: groupedCards[row]!,
                          idLabel: localizations.id,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            );
          }

          return DefaultTabController(
            length: tabIndexes.length,
            child: Scaffold(
              appBar: AppBar(
                actions: [
                  LogOutButton(
                    onTap: () => getIt<AuthBloc>().add(const LogOut()),
                  ),
                ],
                bottom: LabeledTabBar(labels: localizedLabels),
              ),
              body: content,
            ),
          );
        },
      ),
    );
  }

  String _mapKanbanRowToString(KanbanRow row, AppLocalizations localizations) {
    switch (row) {
      case KanbanRow.onHold:
        return localizations.onHold;
      case KanbanRow.inProgress:
        return localizations.inProgress;
      case KanbanRow.needsReview:
        return localizations.needsReview;
      case KanbanRow.approved:
        return localizations.approved;
    }
  }
}
