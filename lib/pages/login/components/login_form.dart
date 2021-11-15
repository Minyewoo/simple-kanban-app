import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban/bloc/auth_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sprintf/sprintf.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String username = '';
  String password = '';

  void submitLogin(BuildContext context) {
    context.read<AuthBloc>().add(SignIn(username, password));
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final themeData = Theme.of(context);

    return Form(
      key: _formKey,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        _buildUsernameFormField(localizations!),
        const SizedBox(height: 20),
        _buildPasswordFormField(localizations),
        const SizedBox(height: 40),
        _buildSubmitButton(themeData, localizations),
      ]),
    );
  }

  MaterialButton _buildSubmitButton(
      ThemeData themeData, AppLocalizations localizations) {
    return MaterialButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          _formKey.currentState!.save();
          submitLogin(context);
        }
      },
      child: Center(
        child: Text(
          localizations.logIn,
          style: TextStyle(
            color: themeData.backgroundColor,
          ),
        ),
      ),
      color: themeData.primaryColor,
      padding: const EdgeInsets.all(18.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(26),
        ),
      ),
    );
  }

  TextFormField _buildPasswordFormField(AppLocalizations localizations) {
    return TextFormField(
      onSaved: (newValue) => password = newValue!,
      validator: (value) {
        if (value!.isEmpty) {
          return sprintf(localizations.xIsEmpty, [localizations.password]);
        }
        if (value.length < 8) {
          return sprintf(localizations.minimumXSymbols, [8]);
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        labelText: localizations.password,
        hintText: sprintf(
            localizations.enterX, [localizations.password.toLowerCase()]),
      ),
    );
  }

  TextFormField _buildUsernameFormField(AppLocalizations localizations) {
    return TextFormField(
      onSaved: (newValue) => username = newValue!,
      keyboardType: TextInputType.name,
      validator: (value) {
        if (value!.isEmpty) {
          return sprintf(localizations.xIsEmpty, [localizations.username]);
        }
        if (value.length < 4) {
          return sprintf(localizations.minimumXSymbols, [4]);
        }
        if (!RegExp(r'^[a-zA-Z0-9.]').hasMatch(value)) {
          return sprintf(localizations.xIsInvalid, [localizations.username]);
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: localizations.username,
        hintText: sprintf(
            localizations.enterX, [localizations.username.toLowerCase()]),
      ),
    );
  }
}
