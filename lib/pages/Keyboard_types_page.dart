import 'package:flutter/material.dart';

class KeyboardTypesPage extends StatelessWidget {
  const KeyboardTypesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: const [
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                label: Text('Email'), border: OutlineInputBorder()),
            textInputAction: TextInputAction.next,
          ),
          SizedBox(height: 20),
          TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                label: Text('Phone'), border: OutlineInputBorder()),
          ),
          SizedBox(height: 20),
          TextField(
            keyboardType:
                TextInputType.numberWithOptions(decimal: true, signed: true),
            decoration: InputDecoration(
                label: Text('Price'), border: OutlineInputBorder()),
          ),
          SizedBox(height: 20),
          TextField(
            autocorrect: false,
            enableSuggestions: false,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                label: Text('Name'), border: OutlineInputBorder()),
          )
        ],
      ),
    );
  }
}
