import 'package:flutter/material.dart';
import 'package:inputs/utils/material_color_generator.dart';

ThemeData getThemeData(BuildContext context) {
  return ThemeData(
    primarySwatch: generateMaterialColor(
      const Color(0xffd81b60),
    ),
    colorScheme: const ColorScheme.light(
      primary: Color(0xff6200ee),
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.pinkAccent)),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(width: 2),
        borderRadius: BorderRadius.circular(0),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(
        Colors.pinkAccent,
      ),
      checkColor: MaterialStateProperty.all(
        Colors.white,
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(
        Colors.pinkAccent,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(Colors.amber),
      trackColor: MaterialStateProperty.all(Colors.amber),
    ),
    sliderTheme: SliderThemeData(
        //esta es la altura del track
        trackHeight: 15,
        activeTrackColor: Colors.pinkAccent,
        thumbColor: Colors.pink,
        overlayColor: Colors.pink.withOpacity(0.1),
        valueIndicatorColor: Colors.redAccent,
        inactiveTickMarkColor: Colors.white54),
  );
}
