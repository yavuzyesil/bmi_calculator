import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CircleButton extends StatelessWidget {
  const CircleButton(
      {super.key,
      required this.xMarPad,
      required this.bgroundColor,
      required this.itemColor,
      required this.function,
      required this.buttonPlusMinus});

  final EdgeInsets xMarPad;
  final Color bgroundColor;
  final MaterialColor itemColor;
  final VoidCallback function;
  final ButtonPlusMinus buttonPlusMinus;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: xMarPad,
          shape: const CircleBorder(),
          backgroundColor: bgroundColor),
      onPressed: function,
      child: Icon(
        buttonPlusMinus == ButtonPlusMinus.plus
            ? FontAwesomeIcons.plus
            : FontAwesomeIcons.minus,
        color: itemColor,
      ),
    );
  }
}

class StandardCard extends StatelessWidget {
  StandardCard({
    super.key,
    required this.buttonColor,
    required this.xMarPad,
    required this.widget,
  });

  final Color buttonColor;
  EdgeInsets xMarPad = sMarPad;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: buttonColor,
      ),
      margin: xMarPad,
      child: widget,
    );
  }
}

enum ButtonPlusMinus { plus, minus }

enum SelectedGender { male, female }

const sMarPad = EdgeInsets.all(8.0);
const mMarPad = EdgeInsets.all(16.0);
const lMarPad = EdgeInsets.all(24.0);
const maleIcon = FontAwesomeIcons.mars;
const femaleIcon = FontAwesomeIcons.venus;
const bgroundColor = Color(0XFF1D2136);
const buttonColor = Color(0XFF323244);
const bottomButtonColor = Color(0XFFE63D65);
const itemColor = Colors.amber;
const thumbInactiveColor = Color(0x55FFC107);
const greenColor = Color(0xFF66BB6A);
const title = "BMI CALCULATOR";
const height = "Height";
const weight = "Weight";
const age = "Age";
const cm = "cm";
const calculate = "Calculate";
const recalculate = "RE-Calculate";
const maleText = "Male";
const femaleText = "Female";
const yourResult = "Your Result";
