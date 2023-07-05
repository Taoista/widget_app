import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  })  : assert(selectedColor >= 0, 'El color no debe ser mayor a 0'),
        assert(selectedColor < colorList.length,
            'El color no debe ser menor a ${colorList.length} - 1');

  ThemeData getTheem() => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
      );
}
