import 'package:flutter/material.dart';

import '../colors/colors_app.dart';
import '../icons/icons_app.dart';

class DateTimeCard extends StatelessWidget {
  final ColorsAppDefault colors;
  final String dateTime;
  const DateTimeCard({super.key, required this.colors, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(IconsApp.clock),
        const SizedBox(width: 8,),
        Text(
          "$dateTime restantes",
          style: TextStyle(
            color: colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}