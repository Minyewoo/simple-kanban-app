import 'package:flutter/material.dart';

class LogOutButton extends StatelessWidget {
  final void Function()? onTap;
  const LogOutButton({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
