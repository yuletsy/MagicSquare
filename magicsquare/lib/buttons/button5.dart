import 'package:flutter/material.dart';
import 'package:magicsquare/magic/magic_square.dart';

class Button5 extends StatefulWidget {
  final Data data;
  Button5({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button5();
  }
}

class _Button5 extends State<Button5> {
  netxNumber() {
    setState(() {
      if (widget.data.num5 == 9) {
        widget.data.num5 = 1;
      } else {
        widget.data.num5++;
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
              this.widget.data.num5.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.black),
            ))
      ],
    );
  }
}
