import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../app/routes/routes_app.dart';
import '../token/token_manager.dart';

class ExitApp{

  final tokenManager = TokenManager();
  
  Future<void> exitToApp() async {
    await tokenManager.removeToken();
    SystemNavigator.pop();
  }

  Future<void> changeAccount() async {
    await tokenManager.removeToken();
    Modular.to.navigate(RoutesModulesApp.routerLoginModule);
  }
  
}