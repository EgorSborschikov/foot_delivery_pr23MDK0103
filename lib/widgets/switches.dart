import 'package:flutter/material.dart';

class Switches extends StatefulWidget {
  const Switches({super.key});

  @override
  _SwitchesState createState() => _SwitchesState();
}

class _SwitchesState extends State<Switches> {
  int _selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Credit Card'),
          leading: Radio<int>(
            value: 0,
            groupValue: _selectedValue,
            onChanged: (int? value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('PayPal'),
          leading: Radio<int>(
            value: 1,
            groupValue: _selectedValue,
            onChanged: (int? value) {
              setState(() {
                _selectedValue = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
