import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final Color _color; // final is like const in C#, the value can not be changed

  TextSection(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: _color),
      child: Text('adf'),
    );
  }
}
