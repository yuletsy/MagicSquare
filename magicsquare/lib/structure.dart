import 'package:magicsquare/magic/magic_square.dart';
import 'package:flutter/material.dart';

class WidgetDinamico extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WidgetDinamico();
  }
}

class _WidgetDinamico extends State<WidgetDinamico> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [MagicSquare()],
    );
  }
}
