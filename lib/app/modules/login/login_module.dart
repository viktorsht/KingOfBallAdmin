import 'package:flutter_modular/flutter_modular.dart';
import '../../routes/routes_app.dart';
import 'pages/login_page.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(RoutesModulesApp.routerRootModule, child: (context, args) => const LoginPage()),
  ];

}