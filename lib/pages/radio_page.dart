import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  String? _better;
  String? _gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            const Text('Witch is better'),
            Row(
              children: [
                Radio<String>(
                  value: 'flutter',
                  groupValue: _better,
                  onChanged: (value) {
                    setState(() {
                      _better = value;
                    });
                  },
                ),
                const Text('flutter')
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  value: 'react native',
                  groupValue: _better,
                  onChanged: (value) {
                    setState(() {
                      _better = value;
                    });
                  },
                ),
                Text('react native')
              ],
            ),
            Divider(),
            Text('What is your gender?'),
            Row(
              children: [
                Radio<String>(
                  value: 'male',
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
                const Text('male')
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  value: 'female',
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
                const Text('female')
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  value: 'other',
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
                const Text('other')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
