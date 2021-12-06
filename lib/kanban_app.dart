import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban/di/injection.dart';
import 'package:kanban/pages/kanban/kanban_page.dart';
import 'package:kanban/pages/login/login_page.dart';
import 'package:kanban/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'bloc/auth_bloc.dart';

class KanbanApp extends StatelessWidget {
  const KanbanApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          String initialRoute;
          if (state is AuthTokenReceived) {
            initialRoute = KanbanPage.routeName;
          } else {
            initialRoute = LoginPage.routeName;
          }
          return MaterialApp(
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            title: 'Kanban',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              inputDecorationTheme: InputDecorationTheme(
                floatingLabelBehavior: FloatingLabelBehavior.never,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
            ),
            initialRoute: initialRoute,
            routes: routes,
          );
        },
      ),
    );
  }
}
