import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban/bloc/auth_bloc.dart';
import 'package:kanban/bloc/cards_bloc.dart';
import 'package:kanban/data/models/kanban_card.dart';
import 'package:kanban/di/injection.dart';
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

          Widget content = _buildSomethingWentWrongIndication(localizations);

          if (state is CardsRequested) {
            content = _buildLoadingIndication(Theme.of(context));
          }

          if (state is CardsLoaded) {
            content = _buildTabsContent(state, localizations);
          }

          return _buildBodyWithContent(localizations, content);
        },
      ),
    );
  }

  DefaultTabController _buildBodyWithContent(
      AppLocalizations? localizations, Widget content) {
    return DefaultTabController(
      length: tabIndexes.length,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            _buildLogOutButton(),
          ],
          bottom: _buildTabBar(localizations),
        ),
        body: content,
      ),
    );
  }

  Center _buildSomethingWentWrongIndication(AppLocalizations? localizations) {
    return Center(
      child: Text(localizations!.smthWentWrong),
    );
  }

  Center _buildLoadingIndication(ThemeData theme) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  TabBarView _buildTabsContent(
      CardsLoaded state, AppLocalizations? localizations) {
    return TabBarView(
      children: tabIndexes
          .map(
            (row) => RefreshIndicator(
              onRefresh: () async => getIt<CardsBloc>().add(const GetCards()),
              child: ListView(
                children: state.cards
                    .where((card) => card.row == row)
                    .map((card) => _buildCard(card, localizations!))
                    .toList(),
              ),
            ),
          )
          .toList(),
    );
  }

  TabBar _buildTabBar(AppLocalizations? localizations) {
    return TabBar(
      tabs: tabIndexes
          .map(
            (row) => Tab(
              child: Text(
                _mapKanbanRowToString(row, localizations!),
                maxLines: 1,
                softWrap: false,
                overflow: TextOverflow.fade,
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _buildLogOutButton() {
    return InkWell(
      onTap: () => getIt<AuthBloc>().add(const LogOut()),
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Icon(Icons.arrow_back),
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

  Widget _buildCard(KanbanCard card, AppLocalizations localizations) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        tileColor: Colors.white,
        subtitle: Text('${localizations.id}:${card.id}'),
        title: Text(card.text),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
