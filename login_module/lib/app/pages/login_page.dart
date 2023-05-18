import 'package:core_app/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    Modular.to.pushNamed('/inform-name');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const RouterOutlet();
  }
}
