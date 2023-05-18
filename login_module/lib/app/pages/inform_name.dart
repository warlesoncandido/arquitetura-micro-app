import 'package:core_app/core_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class InformName extends StatefulWidget {
  const InformName({super.key});

  @override
  State<InformName> createState() => _InformNameState();
}

class _InformNameState extends State<InformName> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
            ),
            TextButton(
              onPressed: () {
                Modular.replaceInstance<UserModel>(UserModel(
                    name: _controller.text,
                    token: "teste123",
                    refreshToken: "teste456"));
                Modular.to.navigate('/home');
              },
              child: Text('IR PARA A HOME'),
            ),
          ],
        ),
      ),
    );
  }
}
