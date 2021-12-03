import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban/bloc/auth_bloc.dart';
import 'package:kanban/bloc/cards_bloc.dart';
import 'package:kanban/di/injection.dart';
import 'package:kanban/pages/kanban/kanban_page.dart';
import 'package:kanban/pages/login/login_page.dart';
import 'package:kanban/routes.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  HydratedBlocOverrides.runZoned(
    () {
      configureDependencies(Environment.prod);
      runApp(const MyApp());
    },
    storage: storage,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider<CardsBloc>(
          create: (context) => getIt<CardsBloc>(),
        ),
      ],
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
