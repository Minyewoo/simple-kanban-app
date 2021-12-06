import 'package:flutter/material.dart';

class LoginFormField extends TextFormField {
  LoginFormField({
    Key? key,
    Map<bool Function(String?), String>? valueChecks,
    String? labelText,
    String? hintText,
    void Function(String?)? onSaved,
    TextInputType? keyboardType,
    bool obscureText = false,
  }) : super(
          key: key,
          obscureText: obscureText,
          validator: (value) {
            for (var entry in valueChecks!.entries) {
              var check = entry.key;
              var error = entry.value;

              if (!check(value)) return error;
            }

            return null;
          },
          onSaved: onSaved,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
          ),
        );
}
