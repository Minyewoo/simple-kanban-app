import 'package:flutter/material.dart';
import 'package:kanban/bloc/auth_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kanban/di/injection.dart';
import 'package:kanban/pages/login/components/login_form_field.dart';
import 'package:kanban/pages/login/components/rounded_button.dart';
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

  bool _isNotEmpty(String? value) => value!.isNotEmpty;
  bool _isLongerThan(String? value, int length) => value!.length > length;
  bool _isValid(String? value) => RegExp(r'^[a-zA-Z0-9.]').hasMatch(value!);

  void _updateUsername(String? newUsername) {
    setState(() {
      username = newUsername!;
    });
  }

  void _updatePassword(String? newPassword) {
    setState(() {
      password = newPassword!;
    });
  }

  void _proceedForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      getIt<AuthBloc>().add(SignIn(username, password));
    }
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final themeData = Theme.of(context);

    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoginFormField(
            onSaved: _updateUsername,
            keyboardType: TextInputType.name,
            labelText: localizations!.username,
            hintText: sprintf(
                localizations.enterX, [localizations.username.toLowerCase()]),
            valueChecks: {
              _isNotEmpty:
                  sprintf(localizations.xIsEmpty, [localizations.username]),
              (value) => _isLongerThan(value, 4):
                  sprintf(localizations.minimumXSymbols, [4]),
              _isValid:
                  sprintf(localizations.xIsInvalid, [localizations.username]),
            },
          ),
          const Spacer(),
          LoginFormField(
            onSaved: _updatePassword,
            obscureText: true,
            labelText: localizations.password,
            hintText: sprintf(
                localizations.enterX, [localizations.password.toLowerCase()]),
            valueChecks: {
              _isNotEmpty:
                  sprintf(localizations.xIsEmpty, [localizations.username]),
              (value) => _isLongerThan(value, 8):
                  sprintf(localizations.minimumXSymbols, [8]),
            },
          ),
          const Spacer(),
          RoundedTextButton(
            label: localizations.logIn,
            onPressed: _proceedForm,
            textColor: themeData.backgroundColor,
            backgroundColor: themeData.primaryColor,
          ),
        ],
      ),
    );
  }
}
