import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 200,
                  width: 100,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Slider(
                      value: _value,
                      label: _value.toString(),
                      min: 0,
                      max: 100,
                      divisions: 100,
                      onChanged: (value) {
                        setState(
                          () {
                            _value = value.floorToDouble();
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
