import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kingofball_admin/app/app_module.dart';
import 'package:kingofball_admin/app/app_widget.dart';

void main() {
  return runApp(ModularApp(
      module: AppModule(), 
      child: const AppWidget(),
    )
  );
}