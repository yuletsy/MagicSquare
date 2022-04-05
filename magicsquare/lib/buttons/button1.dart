import 'package:flutter/material.dart';
import 'package:magicsquare/src/magic_square.dart';

class Button1 extends StatefulWidget {
  final Data data;
  Button1({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button1();
  }
}

class _Button1 extends State<Button1> {
  netxNumber() {
    setState(() {
      if (widget.data.num1 == 9) {
        widget.data.num1 = 1;
      } else {
        widget.data.num1++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {
              netxNumber();
            },
            child: Text(
              this.widget.data.num1.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.black),
            ))
      ],
    );
  }
}
