import 'package:flutter/material.dart';
import 'package:magicsquare/structure.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: Text("Magic Square")),
      body: WidgetDinamico(),
    ),
  ));
}
