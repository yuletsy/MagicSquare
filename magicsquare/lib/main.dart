import 'package:flutter/material.dart';
import 'package:magicsquare/structure.dart';
import 'package:magicsquare/magic/magic_square.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String name = 'Magic Square';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: name,
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: MagicSquare(),
      );
}
