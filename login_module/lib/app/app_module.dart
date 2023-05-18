import 'package:flutter_modular/flutter_modular.dart';
import 'package:login_app/app/pages/inform_name.dart';
import 'package:login_app/app/pages/login_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const LoginPage(), children: [
      ChildRoute('/inform-name', child: (_, args) => const InformName())
    ]),
  ];
}
