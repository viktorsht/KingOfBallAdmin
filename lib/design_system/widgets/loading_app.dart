import 'package:flutter/material.dart';
import '../colors/colors_app.dart';
import 'widget_loading.dart';

class LoadingApp extends StatelessWidget {
  const LoadingApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = ColorsAppDefault(); 
    return Scaffold(
      backgroundColor: colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Carregando...",
              style: TextStyle(
                color: colors.white,
                fontSize: 24
              ),
            ),
            const WidgetLoading(
              width: 6, 
              thickness: 1
            )
          ]
        ),
      ),
    );
  }
}