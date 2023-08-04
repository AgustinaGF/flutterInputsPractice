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
  String _query = '';

  @override
  void initState() {
    super.initState();

    _countries = countries
        .map(
          (e) => Country.fromJson(e),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    late final List<Country> filteredList;

    if (_query.isEmpty) {
      filteredList = _countries;
    } else {
      filteredList = _countries
          .where(
            (e) => e.name.toLowerCase().contains(_query.toLowerCase()),
          )
          .toList();
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: TextField(
          onChanged: (text) {
            _query = text;
            setState(() {});
          },
          decoration: const InputDecoration(
              label: Text('search...'),
              hintText: 'placeholder',
              prefixIcon: Icon(
                Icons.search_rounded,
              ),
              suffixIcon: Icon(Icons.clear),
              hintStyle: TextStyle(color: Colors.black26),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff00c853),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54))),
        ),
      ),
      body: ListView.builder(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemBuilder: (_, index) {
          final country = filteredList[index];
          return ListTile(
            title: Text(country.name),
          );
        },
        itemCount: filteredList.length,
      ),
    );
  }
}
