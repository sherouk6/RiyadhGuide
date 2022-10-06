import 'package:flutter/material.dart';

class Mybutton1 extends StatelessWidget {
  Mybutton1(
      {required this.color, required this.onPressed, required this.title});

  final Color color;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: color,
      borderRadius: BorderRadius.circular(10),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: 200,
        height: 42,
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'EBGaramond',
            fontSize: 28.0,
            color: Color.fromARGB(255, 250, 245, 238),
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
