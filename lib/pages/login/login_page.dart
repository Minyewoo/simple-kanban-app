import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban/bloc/auth_bloc.dart';
import 'package:kanban/pages/kanban/kanban_page.dart';
import 'package:kanban/pages/login/components/login_form.dart';

class LoginPage extends StatelessWidget {
  static String routeName = '/login';

  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthTokenReceived) {
            Navigator.of(context).popAndPushNamed(KanbanPage.routeName);
          }

          if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.failure.data.values.first),
              ),
            );
          }
        },
        builder: (context, state) {
          final defaultContent = [_buildLoginPage()];
          if (state is AuthTokenRequested || state is AuthTokenReceived) {
            return Stack(
              children: [
                ...defaultContent,
                _buildSigningInOverlay(themeData),
              ],
            );
          }
          return Stack(
            children: defaultContent,
          );
        },
      ),
    );
  }

  Container _buildSigningInOverlay(ThemeData themeData) {
    return Container(
      color: themeData.backgroundColor.withOpacity(0.9),
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildLoginPage() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: LoginForm(),
      ),
    );
  }
}
