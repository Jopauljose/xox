import 'package:flutter/material.dart';
import 'package:xox/box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late int count = 0;
  bool isturn = true;
  late String b11 = '';
  late String b12 = '';
  late String b13 = '';
  late String b21 = '';
  late String b22 = '';
  late String b23 = '';
  late String b31 = '';
  late String b32 = '';
  late String b33 = '';
  void reset() {
    setState(() {
      count = 0;
      isturn = true;
      b11 = '';
      b12 = '';
      b13 = '';
      b21 = '';
      b22 = '';
      b23 = '';
      b31 = '';
      b32 = '';
      b33 = '';
    });
  }

  bool win() {
    if (b11 == b22 && b22 == b33 && b11 != '' ||
        b13 == b22 && b22 == b31 && b13 != '' ||
        b11 == b12 && b12 == b13 && b11 != '' ||
        b21 == b22 && b22 == b23 && b21 != '' ||
        b31 == b32 && b32 == b33 && b31 != '' ||
        b11 == b21 && b21 == b31 && b11 != '' ||
        b12 == b22 && b22 == b32 && b12 != '' ||
        b13 == b23 && b23 == b33 && b13 != '') {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                Box(
                    ontap: () {
                      setState(() {
                        count++;
                        b11 = isturn ? 'X' : 'O';
                        isturn = !isturn;
                      });
                    },
                    text: b11),
                Box(
                    ontap: () {
                      setState(() {
                        count++;
                        b12 = isturn ? 'X' : 'O';
                        isturn = !isturn;
                      });
                    },
                    text: b12),
                Box(
                    ontap: () {
                      setState(() {
                        count++;
                        b13 = isturn ? 'X' : 'O';
                        isturn = !isturn;
                      });
                    },
                    text: b13),
              ],
            ),
            Row(
              children: [
                Box(
                    ontap: () {
                      setState(() {
                        count++;
                        b21 = isturn ? 'X' : 'O';
                        isturn = !isturn;
                      });
                    },
                    text: b21),
                Box(
                    ontap: () {
                      setState(() {
                        count++;
                        b22 = isturn ? 'X' : 'O';
                        isturn = !isturn;
                      });
                    },
                    text: b22),
                Box(
                    ontap: () {
                      setState(() {
                        count++;
                        b23 = isturn ? 'X' : 'O';
                        isturn = !isturn;
                      });
                    },
                    text: b23),
              ],
            ),
            Row(
              children: [
                Box(
                    ontap: () {
                      setState(() {
                        count++;
                        b31 = isturn ? 'X' : 'O';
                        isturn = !isturn;
                      });
                    },
                    text: b31),
                Box(
                    ontap: () {
                      setState(() {
                        count++;
                        b32 = isturn ? 'X' : 'O';
                        isturn = !isturn;
                      });
                    },
                    text: b32),
                Box(
                    ontap: () {
                      setState(() {
                        count++;
                        b33 = isturn ? 'X' : 'O';
                        isturn = !isturn;
                      });
                    },
                    text: b33),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Text(
              'Player ${isturn ? 'X' : 'O'} turn',
              style: const TextStyle(fontSize: 20, fontFamily: 'Roberto'),
            ),
            if (count >= 9 && !win())
              const Text(
                'Draw',
                style: TextStyle(fontSize: 20, fontFamily: 'Roberto'),
              ),
            if (win())
              Text(
                'Player ${isturn ? 'O' : 'X'} win',
                style: const TextStyle(fontSize: 20, fontFamily: 'Roberto'),
              ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: reset,
              child: const Text('Reset'),
            )
          ],
        )
      ],
    );
  }
}
