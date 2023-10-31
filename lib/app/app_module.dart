import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../design_system/widgets/loading_app.dart';
import '../shared/api/api_headers.dart';
import '../shared/auth/auth_controller.dart';
import '../shared/exit/exit_app.dart';
import '../shared/token/token_manager.dart';
import 'modules/login/login_module.dart';
import 'modules/register_user/controllers/register_user_controller.dart';
import 'modules/start_info/start_info_page.dart';
import 'modules/start_navigation_bar/modules/drawer/drawer_module.dart';
import 'modules/start_navigation_bar/modules/football_field/football_field_module.dart';
import 'modules/start_navigation_bar/modules/more/more_module.dart';
import 'modules/champion_ship/team_edition.dart';
import 'modules/update_team/update_user_module.dart';
import 'routes/routes_app.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
    Bind.lazySingleton((i) => DefaultHeadersApi()),
    Bind.singleton((i) => AuthController()),
    Bind.singleton((i) => TokenManager()),
    Bind.singleton((i) => ExitApp()),
  ];

  @override
  List<ModularRoute> get routes => [
    
    ChildRoute(
      RoutesModulesApp.routerRootModule,
      child: (_, __) => FutureBuilder<bool>(
        future: Modular.get<AuthController>().checkAuthenticated(),
        builder: (_, snapshot){
          return snapshot.connectionState == ConnectionState.waiting ? const LoadingApp() : snapshot.hasData 
          ? snapshot.data! ? const StartNavigationBarPage() : const StartInfoPage()
          : const StartInfoPage();
        }
      ),
    ),

/*
    ChildRoute(
      RoutesModulesApp.routerRootModule, 
      child: (_, __) => const StartInfoPage(), 
    ),*/

    ModuleRoute(RoutesModulesApp.routerLoginModule, module: LoginModule()),
  ];
}