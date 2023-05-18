import 'package:core_app/models/user_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:home_app/app/module.dart';
import 'package:login_app/login_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => UserModel()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/', module: LoginModule())
  ];
}
