import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final GestureTapCallback ontap;
  final String text;
  const Box({super.key, required this.ontap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          width: 100,
          height: 100,
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 20, fontFamily: 'Roberto', color: Colors.black),
          ),
        ),
      ),
    );
  }
}
