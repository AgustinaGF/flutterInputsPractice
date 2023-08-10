import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  String? _better;
  String? _gender;

  void _onBetterChanged(String? value) {
    setState(() {
      _better = value;
    });
  }

  void _onGenderChanged(String? value) {
    setState(() {
      _gender = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            const Text('Witch is better'),
            RadioListTile<String>(
                value: 'flutter',
                groupValue: _better,
                title: const Text('flutter'),
                contentPadding: EdgeInsets.zero,
                onChanged: _onBetterChanged),
            RadioListTile<String>(
                value: 'react native',
                groupValue: _better,
                contentPadding: EdgeInsets.zero,
                title: const Text('react native'),
                onChanged: _onBetterChanged),
            const Divider(),
            const Text('What is your gender?'),
            RadioListTile<String>(
              value: 'male',
              groupValue: _gender,
              contentPadding: EdgeInsets.zero,
              onChanged: _onGenderChanged,
              title: const Text('male'),
            ),
            RadioListTile<String>(
              value: 'female',
              groupValue: _gender,
              onChanged: _onGenderChanged,
              contentPadding: EdgeInsets.zero,
              title: const Text('female'),
            ),
            RadioListTile<String>(
              value: 'other',
              groupValue: _gender,
              onChanged: _onGenderChanged,
              contentPadding: EdgeInsets.zero,
              title: const Text('other'),
            ),
          ],
        ),
      ),
    );
  }
}
