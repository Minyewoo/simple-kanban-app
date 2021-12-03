import 'package:flutter/material.dart';

class RoundedTextButton extends StatelessWidget {
  final String label;
  final void Function()? onPressed;
  final Color? textColor;
  final Color? backgroundColor;

  const RoundedTextButton(
      {Key? key,
      required this.label,
      this.onPressed,
      this.textColor,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
      color: backgroundColor,
      padding: const EdgeInsets.all(18.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(26),
        ),
      ),
    );
  }
}
