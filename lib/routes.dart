import 'package:flutter/material.dart';
import 'package:kanban/pages/kanban/kanban_page.dart';
import 'package:kanban/pages/login/login_page.dart';

final Map<String, WidgetBuilder> routes = {
  LoginPage.routeName: (context) => const LoginPage(),
  KanbanPage.routeName: (context) => KanbanPage(),
};