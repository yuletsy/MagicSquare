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
  String answer1 = "";

  matrix() {
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

  validar() {
    matrix();
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
          answer = "si es";
          answer1 = "";
        } else {
          answer = "";
          answer1 = "No es";
        }
      } else {
        answer = "";
        answer1 = "No es";
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(MyApp.name),
        ),
        body: buildGridView(),
      );

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
          Spacer(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )),
              onPressed: () {
                validar();
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
                  this.answer1,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.cyan),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Spacer(),
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
              children: [],
            ),
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
