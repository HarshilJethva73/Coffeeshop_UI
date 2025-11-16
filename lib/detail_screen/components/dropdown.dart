import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: selectedValue,
      items: List.generate(6, (index) => index).map((int value) {
        return DropdownMenuItem<int>(
          value: value,
          child: Text(value.toString()),
        );
      }).toList(),
      onChanged: (int? newValue) {
        setState(() {
          selectedValue = newValue!;
        });
      },
    );
  }
}
