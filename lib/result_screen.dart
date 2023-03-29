// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bmi_calculator/components.dart';

class ResultScreen extends StatelessWidget {
  String title;
  String result;
  String suggestion;
  ResultScreen({
    Key? key,
    required this.title,
    required this.result,
    required this.suggestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: sMarPad,
                child: Text(
                  yourResult,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: StandardCard(
                buttonColor: buttonColor,
                xMarPad: mMarPad,
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(title.toUpperCase(),
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold, color: greenColor)),
                    Text(result,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge
                            ?.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 96)),
                    Text(suggestion,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineMedium),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Container(
                  color: bottomButtonColor,
                  child: Center(
                    child: Text(
                      recalculate.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
