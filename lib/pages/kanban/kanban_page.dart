import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban/bloc/auth_bloc.dart';
import 'package:kanban/data/models/kanban_card.dart';
import 'package:kanban/di/injection.dart';
import 'package:kanban/pages/kanban/components/kanban_card_list.dart';
import 'package:kanban/pages/kanban/components/labeled_tab_bar.dart';
import 'package:kanban/pages/kanban/components/log_out_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kanban/pages/login/login_page.dart';

class KanbanPage extends StatelessWidget {
  static String routeName = '/kanban';
  static const List<KanbanRow> _kanbanRows = KanbanRow.values;

  final List<KanbanCardList> _cardList =
      _kanbanRows.map((row) => KanbanCardList(row: row)).toList();

  KanbanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final localizedLabels = _kanbanRows
        .map((row) => _mapKanbanRowToLocalization(row, localizations!))
        .toList();

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthInitial) {
          Navigator.of(context).popAndPushNamed(LoginPage.routeName);
        }
      },
      child: DefaultTabController(
        length: _kanbanRows.length,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              LogOutButton(
                onTap: () => getIt<AuthBloc>().add(const LogOut()),
              ),
            ],
            bottom: LabeledTabBar(labels: localizedLabels),
          ),
          body: TabBarView(
            children: _cardList,
          ),
        ),
      ),
    );
  }

  String _mapKanbanRowToLocalization(
      KanbanRow row, AppLocalizations localizations) {
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
