import 'package:flutter/material.dart';

class CalculatorResult extends StatelessWidget {
  final String upperText;
  final String bottomText;

  CalculatorResult(this.upperText, this.bottomText);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              upperText,
              style: TextStyle(
                fontSize: 13,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              bottomText,
              style: TextStyle(
                fontSize: 55,
                color: Theme.of(context).accentColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
