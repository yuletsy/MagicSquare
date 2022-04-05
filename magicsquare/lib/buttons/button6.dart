import 'package:flutter/material.dart';
import 'package:magicsquare/magic/magic_square.dart';

class Button6 extends StatefulWidget {
  final Data data;
  Button6({required this.data});

  @override
  State<StatefulWidget> createState() {
    return _Button6();
  }
}

class _Button6 extends State<Button6> {
  netxNumber() {
    setState(() {
      if (widget.data.num6 == 9) {
        widget.data.num6 = 1;
      } else {
        widget.data.num6++;
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
              this.widget.data.num6.toString(),
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.black),
            ))
      ],
    );
  }
}
