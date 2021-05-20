import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color fillColor;
  final Function callback;

  CalculatorButton(
      {this.text,
      this.textColor = Colors.black,
      this.fillColor = Colors.white,
      this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: ClipOval(
        child: Material(
          color: fillColor,
          child: InkWell(
            onTap: () {
              callback(text);
            },
            child: SizedBox(
              width: 70,
              height: 70,
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 21,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
