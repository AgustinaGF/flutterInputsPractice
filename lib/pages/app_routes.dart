import 'package:flutter/material.dart';
import 'package:inputs/pages/Keyboard_types_page.dart';
import 'package:inputs/pages/check_box_page.dart';
import 'package:inputs/routes.dart';
import 'package:inputs/pages/text_file_page.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.textField: (_) => const TextFieldPage(),
    Routes.keyboardTypes: (_) => const KeyboardTypesPage(),
    Routes.checkbox: (_) => const CheckBoxPage(),
  };
}
