import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

import 'modules/login/controllers/login_controller.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LoginController>(create: (_) => LoginController(),),
      ],
      child: MaterialApp.router(
        title: 'Rei da Bola',
        debugShowCheckedModeBanner: false,
        routerDelegate: Modular.routerDelegate,
        routeInformationParser: Modular.routeInformationParser,
      ),
    );
  }
}