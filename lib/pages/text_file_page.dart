import 'package:flutter/material.dart';
import 'package:inputs/constants/countries.dart';
import 'package:inputs/models/country.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  final TextEditingController _textEditingController = TextEditingController();
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
  void dispose() {
    // TODO: implement dispose
    _textEditingController.dispose();
    super.dispose();
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
      _textEditingController.addListener(
        () {},
      );
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: TextField(
          controller: _textEditingController,
          onChanged: (text) {
            _query = text;
            setState(() {});
          },
          decoration: InputDecoration(
              label: const Text('search...'),
              hintText: 'placeholder',
              prefixIcon: const Icon(
                Icons.search_rounded,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  //con esto se va limpiar el campo de texto de busqueda
                  _textEditingController.text = '';
                  _query = '';
                  FocusScope.of(context).unfocus();
                },
                icon: const Icon(Icons.clear),
              ),
              hintStyle: const TextStyle(color: Colors.black26),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff00c853),
                ),
              ),
              enabledBorder: const OutlineInputBorder(
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
