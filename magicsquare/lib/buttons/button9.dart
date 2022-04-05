import 'package:flutter/material.dart';
import 'package:magicsquare/magic/magic_square.dart';

class Button9 extends StatefulWidget {
  final Data data;
  Button9({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button9();
  }
}

class _Button9 extends State<Button9> {
  netxNumber() {
    setState(() {
      if (widget.data.num9 == 9) {
        widget.data.num9 = 1;
      } else {
        widget.data.num9++;
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
              this.widget.data.num9.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.black),
            ))
      ],
    );
  }
}
