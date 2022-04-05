import 'package:flutter/material.dart';
import 'package:magicsquare/magic/magic_square.dart';

class Button4 extends StatefulWidget {
  final Data data;
  Button4({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button4();
  }
}

class _Button4 extends State<Button4> {
  netxNumber() {
    setState(() {
      if (widget.data.num4 == 9) {
        widget.data.num4 = 1;
      } else {
        widget.data.num4++;
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
              this.widget.data.num4.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.black),
            ))
      ],
    );
  }
}
