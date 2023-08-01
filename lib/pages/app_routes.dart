import 'package:flutter/material.dart';
import 'package:inputs/pages/routes.dart';
import 'package:inputs/pages/text_file_page.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.textField: (_) => const TextFieldPage(),
  };
}
