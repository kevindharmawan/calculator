import 'package:calculator/aboutme_page.dart';
import 'package:flutter/material.dart';

import 'package:calculator/widgets/calculator_result.dart';
import 'package:calculator/widgets/calculator_button.dart';

class CalculatorPage extends StatefulWidget {
  static const routeName = '/';

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _operandOne = '0';
  String _operandTwo = '0';
  String _operator = '';
  String _display = '0';
  String _result = '0';

  void _buttonHit(String text) {
    if (int.tryParse(text) != null) {
      if (_operator == '') {
        _operandOne = _operandOne == '0'
            ? (text == '00' ? '0' : text)
            : _operandOne + text;
      } else {
        _operandTwo = _operandTwo == '0'
            ? (text == '00' ? '0' : text)
            : _operandTwo + text;
      }
    } else if (text == '.') {
      if (_operator == '') {
        _operandOne =
            _operandOne.contains('.') ? _operandOne : _operandOne + '.';
      } else {
        _operandTwo =
            _operandTwo.contains('.') ? _operandTwo : _operandTwo + '.';
      }
    } else if (text == '=') {
      _operandOne = countResult();
      _operandTwo = '0';
      _operator = '';
    } else if (text == '+/-') {
      if (_operator == '') {
        if (_operandOne.contains('.')) {
          _operandOne = (-1 * double.parse(_operandOne)).toString();
        } else {
          _operandOne = (-1 * int.parse(_operandOne)).toString();
        }
      } else {
        if (_operandOne.contains('.')) {
          _operandTwo = (-1 * double.parse(_operandTwo)).toString();
        } else {
          _operandTwo = (-1 * int.parse(_operandTwo)).toString();
        }
      }
    } else if (text == '⌫') {
      if (_operator == '') {
        _operandOne = _operandOne.length <= 1
            ? '0'
            : _operandOne.substring(0, _operandOne.length - 1);
      } else {
        _operandTwo = _operandTwo.length <= 1
            ? '0'
            : _operandTwo.substring(0, _operandTwo.length - 1);
      }
    } else if (text == 'C') {
      _operandOne = '0';
      _operandTwo = '0';
      _operator = '';
    } else {
      if (_operator == '') {
        _operator = text;
      } else {
        _operandOne = countResult();
        _operandTwo = '0';
        _operator = text;
      }
    }
    setState(() {
      _display = _operator == ''
          ? _operandOne
          : '$_operandOne $_operator $_operandTwo';
      _result = countResult();
    });
  }

  String numToString(double num) {
    if (num % 1 == 0) {
      return num.round().toString();
    } else {
      return num.toString();
    }
  }

  String countResult() {
    double count = 0;

    if (_operator != '') {
      if (_operator == '+') {
        count = double.parse(_operandOne) + double.parse(_operandTwo);
      } else if (_operator == '-') {
        count = double.parse(_operandOne) - double.parse(_operandTwo);
      } else if (_operator == 'x') {
        count = double.parse(_operandOne) * double.parse(_operandTwo);
      } else if (_operator == '÷') {
        count = double.parse(_operandOne) / double.parse(_operandTwo);
      }
    } else {
      count = double.parse(_operandOne);
    }

    return numToString(count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AboutMePage.routeName);
            },
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: CalculatorResult(_display + ' =', _result),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10,
              bottom: 40,
            ),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(
                      text: 'C',
                      callback: _buttonHit,
                    ),
                    CalculatorButton(
                      text: '⌫',
                      callback: _buttonHit,
                    ),
                    CalculatorButton(
                      text: '+/-',
                      callback: _buttonHit,
                    ),
                    CalculatorButton(
                      text: '÷',
                      callback: _buttonHit,
                      textColor: Theme.of(context).accentColor,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(
                      text: '7',
                      callback: _buttonHit,
                    ),
                    CalculatorButton(
                      text: '8',
                      callback: _buttonHit,
                    ),
                    CalculatorButton(
                      text: '9',
                      callback: _buttonHit,
                    ),
                    CalculatorButton(
                      text: 'x',
                      callback: _buttonHit,
                      textColor: Theme.of(context).accentColor,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(
                      text: '4',
                      callback: _buttonHit,
                    ),
                    CalculatorButton(
                      text: '5',
                      callback: _buttonHit,
                    ),
                    CalculatorButton(
                      text: '6',
                      callback: _buttonHit,
                    ),
                    CalculatorButton(
                      text: '-',
                      callback: _buttonHit,
                      textColor: Theme.of(context).accentColor,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(
                      text: '1',
                      callback: _buttonHit,
                    ),
                    CalculatorButton(
                      text: '2',
                      callback: _buttonHit,
                    ),
                    CalculatorButton(
                      text: '3',
                      callback: _buttonHit,
                    ),
                    CalculatorButton(
                      text: '+',
                      callback: _buttonHit,
                      textColor: Theme.of(context).accentColor,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(
                      text: '00',
                      callback: _buttonHit,
                    ),
                    CalculatorButton(
                      text: '0',
                      callback: _buttonHit,
                    ),
                    CalculatorButton(
                      text: '.',
                      callback: _buttonHit,
                    ),
                    CalculatorButton(
                      text: '=',
                      callback: _buttonHit,
                      fillColor: Theme.of(context).accentColor,
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
