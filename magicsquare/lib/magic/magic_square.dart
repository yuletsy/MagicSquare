// ignore_for_file: prefer_const_constructors, unnecessary_this, prefer_const_literals_to_create_immutables, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:magicsquare/buttons/button1.dart';
import 'package:magicsquare/buttons/button2.dart';
import 'package:magicsquare/buttons/button3.dart';
import 'package:magicsquare/buttons/button4.dart';
import 'package:magicsquare/buttons/button5.dart';
import 'package:magicsquare/buttons/button6.dart';
import 'package:magicsquare/buttons/button7.dart';
import 'package:magicsquare/buttons/button8.dart';
import 'package:magicsquare/buttons/button9.dart';
import '../main.dart';

class MagicSquare extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MagicSquare();
  }
}

class _MagicSquare extends State<MagicSquare> {
  final data = Data(
      num1: 1,
      num2: 1,
      num3: 1,
      num4: 1,
      num5: 1,
      num6: 1,
      num7: 1,
      num8: 1,
      num9: 1);

  int horizontal1 = 0;
  int horizontal2 = 0;
  int horizontal3 = 0;
  int vertical1 = 0;
  int vertical2 = 0;
  int vertical3 = 0;
  int diagonal1 = 0;
  int diagonal2 = 0;

  String answer = "";

  matriz() {
    setState(() {
      horizontal1 = data.num1 + data.num2 + data.num3;
      horizontal2 = data.num4 + data.num5 + data.num6;
      horizontal3 = data.num7 + data.num8 + data.num9;
      vertical1 = data.num1 + data.num4 + data.num7;
      vertical2 = data.num2 + data.num5 + data.num8;
      vertical3 = data.num3 + data.num6 + data.num9;
      diagonal1 = data.num1 + data.num5 + data.num9;
      diagonal2 = data.num7 + data.num5 + data.num3;
    });
  }

  validate() {
    matriz();
    setState(() {
      if (data.num1 != data.num2 &&
          data.num1 != data.num3 &&
          data.num1 != data.num4 &&
          data.num1 != data.num5 &&
          data.num1 != data.num6 &&
          data.num1 != data.num7 &&
          data.num1 != data.num8 &&
          data.num1 != data.num9) {
        if (horizontal1 == 15 &&
            horizontal2 == 15 &&
            horizontal3 == 15 &&
            vertical1 == 15 &&
            vertical2 == 15 &&
            vertical3 == 15 &&
            diagonal1 == 15) {
          answer = "Si Es";
        } else {
          answer = "No es";
        }
      } else {
        answer = "No es";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[90],
      appBar: AppBar(
        title: Text("Magic Square"),
      ),
      body: buildGridView(),
    );
  }

  Widget buildGridView() => GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 2.2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        padding: EdgeInsets.all(5),
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.cyan[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Button1(data: data)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.cyan[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Button2(data: data)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.cyan[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Button3(data: data)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.cyan[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Button4(data: data)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.cyan[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Button5(data: data)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.cyan[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Button6(data: data)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.cyan[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Button7(data: data)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.cyan[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Button8(data: data)],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.cyan[300],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Button9(data: data)],
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
              onPressed: () {
                validate();
              },
              child: Text(
                'Validar',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Colors.orangeAccent),
              )),
          Container(
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  this.answer,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.cyan),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
          Column(
            children: [
              Text("Horizontal1: " + this.horizontal1.toString()),
              Text("Horizontal2: " + this.horizontal2.toString()),
              Text("Horizontal3: " + this.horizontal3.toString()),
              Text("Vertical1: " + this.vertical1.toString()),
              Text("vertical2: " + this.vertical2.toString()),
              Text("vertical3: " + this.vertical3.toString()),
              Text("Diagonal1: " + this.diagonal1.toString()),
              Text("Diagonal2: " + this.diagonal2.toString()),
            ],
          ),
        ],
      );
}

class Data {
  int num1;
  int num2;
  int num3;
  int num4;
  int num5;
  int num6;
  int num7;
  int num8;
  int num9;

  Data({
    required this.num1,
    required this.num2,
    required this.num3,
    required this.num4,
    required this.num5,
    required this.num6,
    required this.num7,
    required this.num8,
    required this.num9,
  });
}
