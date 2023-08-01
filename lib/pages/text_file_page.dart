import 'package:flutter/material.dart';
import 'package:inputs/constants/countries.dart';
import 'package:inputs/models/country.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  late final List<Country> _countries;

  @override
  void initState() {
    super.initState();

    final countriesList = <Country>[];
    _countries = countries
        .map(
          (e) => Country.fromJson(e),
        )
        .toList();
    _countries = countriesList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (_, index) {
          final country = _countries[index];
          return ListTile(
            title: Text(country.name),
          );
        },
        itemCount: _countries.length,
      ),
    );
  }
}
