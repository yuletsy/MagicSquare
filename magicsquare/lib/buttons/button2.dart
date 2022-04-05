import 'package:flutter/material.dart';
import 'package:magicsquare/magic/magic_square.dart';

class Button2 extends StatefulWidget {
  final Data data;
  Button2({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button2();
  }
}

class _Button2 extends State<Button2> {
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
