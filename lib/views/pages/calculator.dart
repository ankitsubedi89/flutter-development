import 'package:flutter/material.dart';
import 'package:flutter_my_first_project/views/components/my_button.dart';

class Calculator extends StatefulWidget {
  final text;
  const Calculator({Key? key, this.text}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int? firstNum;
  int? secondNum;
  String history = '';
  String textToDisplay = '';
  String? result ;
  String? operation ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Center(child: Text('Calculator')),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                alignment: Alignment(1.0, .0),
                padding: EdgeInsets.only(right: 12),
                child: Text(
                  textToDisplay,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black38),
                )),
            Container(
              alignment: Alignment(1.0, 1.0),
              padding: EdgeInsets.all(12),
              child: Text(
                textToDisplay,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  text: 'AC',
                  onTap: onClick,
                ),
                MyButton(
                  text: 'C',
                  onTap: onClick,
                ),
                MyButton(
                  text: '<',
                  onTap: onClick,
                ),
                MyButton(
                  text: '/',
                  onTap: onClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  text: '9',
                  onTap: onClick,
                ),
                MyButton(
                  text: '8',
                  onTap: onClick,
                ),
                MyButton(
                  text: '7',
                  onTap: onClick,
                ),
                MyButton(
                  text: 'X',
                  onTap: onClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  text: '6',
                  onTap: onClick,
                ),
                MyButton(
                  text: '5',
                  onTap: onClick,
                ),
                MyButton(
                  text: '4',
                  onTap: onClick,
                ),
                MyButton(
                  text: '-',
                  onTap: onClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  text: '3',
                  onTap: onClick,
                ),
                MyButton(
                  text: '2',
                  onTap: onClick,
                ),
                MyButton(
                  text: '1',
                  onTap: onClick,
                ),
                MyButton(
                  text: '+',
                  onTap: onClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                  text: '+/-',
                  onTap: onClick,
                ),
                MyButton(
                  text: '0',
                  onTap: onClick,
                ),
                MyButton(
                  text: '00',
                  onTap: onClick,
                ),
                MyButton(
                  text: '=',
                  onTap: onClick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  onClick(String btnValue) {
    print(btnValue);
    if (btnValue == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
    } else if (btnValue == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      result = '';
      history = '';
    } else if (btnValue == '+' ||
        btnValue == '-' ||
        btnValue == 'X' ||
        btnValue == '/') {
      firstNum = int.parse(textToDisplay);
      result = '';
      operation = btnValue;
    } else if (btnValue == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        result = (firstNum! + secondNum!).toString();
        history =
            firstNum!.toString() + operation.toString() + secondNum!.toString();
      }
      if (operation == '-') {
        result = (firstNum! - secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        result = (firstNum! * secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        result = (firstNum! / secondNum!).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      result = int.parse(textToDisplay + btnValue).toString();
    }
    setState(() {
      textToDisplay = result!;
    });
  }
}
