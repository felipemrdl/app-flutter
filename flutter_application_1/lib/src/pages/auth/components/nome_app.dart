import 'package:flutter/material.dart';

class NomeApp extends StatelessWidget {
  final Color? greenTitleColor;
  final double textSize;

  const NomeApp({
    Key? key,
    this.greenTitleColor,
    this.textSize = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(
          fontSize: textSize,
        ),
        children: [
          TextSpan(
            text: 'Green',
            style: TextStyle(
              color: greenTitleColor ?? Colors.red,
            ),
          ),
          TextSpan(
            text: 'grocer',
            style: TextStyle(
              color: greenTitleColor ?? Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}