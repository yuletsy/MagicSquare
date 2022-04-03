import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Buttons();
  }
}

class _Buttons extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text("Magic"),
        )
      ],
    );
  }
}
