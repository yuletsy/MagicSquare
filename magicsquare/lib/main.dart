import 'package:flutter/material.dart';
import 'package:magicsquare/structure.dart';
import 'package:magicsquare/magic/magic_square.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "MagicSquare",
        theme: ThemeData(
            primarySwatch: Colors.cyan,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: MagicSquare(),
      );
}
