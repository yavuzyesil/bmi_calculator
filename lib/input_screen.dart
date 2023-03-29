import 'package:bmi_calculator/calculator_service.dart';
import 'package:bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  int heightNumber = 173;
  int weightNumber = 75;
  int ageNumber = 25;
  late ResultCalculator resultCalculator;
  SelectedGender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(32),
          ),
        ),
        backgroundColor: buttonColor,
        centerTitle: true,
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(fontWeight: FontWeight.w600, color: itemColor),
        ),
      ),
      backgroundColor: bgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 6,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: StandardCard(
                      buttonColor: selectedGender == SelectedGender.male
                          ? buttonColor
                          : bgroundColor,
                      xMarPad: sMarPad,
                      widget: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedGender = SelectedGender.male;
                              });
                            },
                            child: Icon(
                              maleIcon,
                              color: itemColor,
                              size: MediaQuery.of(context).size.height * 0.16,
                            ),
                          ),
                          Text(
                            maleText.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: itemColor),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: StandardCard(
                      buttonColor: selectedGender == SelectedGender.female
                          ? buttonColor
                          : bgroundColor,
                      xMarPad: sMarPad,
                      widget: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedGender = SelectedGender.female;
                              });
                            },
                            child: Icon(
                              femaleIcon,
                              color: itemColor,
                              size: MediaQuery.of(context).size.height * 0.15,
                            ),
                          ),
                          Text(
                            femaleText.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: itemColor),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: StandardCard(
                xMarPad: sMarPad,
                buttonColor: buttonColor,
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      height.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              color: itemColor, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          heightNumber.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge
                              ?.copyWith(
                                  color: itemColor,
                                  fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          cm,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                  color: itemColor,
                                  fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Padding(
                      padding: sMarPad,
                      child: SliderTheme(
                        data: const SliderThemeData(
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 16),
                          trackHeight: 12,
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 0),
                        ),
                        child: Slider(
                            activeColor: itemColor,
                            inactiveColor: thumbInactiveColor,
                            min: 120,
                            max: 240,
                            value: heightNumber.toDouble(),
                            onChanged: (value) {
                              setState(() {
                                heightNumber = value.toInt();
                              });
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                    child: StandardCard(
                      buttonColor: buttonColor,
                      xMarPad: sMarPad,
                      widget: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            weight.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: itemColor),
                          ),
                          Text(
                            weightNumber.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: itemColor),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleButton(
                                  function: () {
                                    setState(() {
                                      weightNumber--;
                                    });
                                  },
                                  xMarPad: mMarPad,
                                  bgroundColor: bgroundColor,
                                  itemColor: itemColor,
                                  buttonPlusMinus: ButtonPlusMinus.minus),
                              CircleButton(
                                function: () {
                                  setState(() {
                                    weightNumber++;
                                  });
                                },
                                xMarPad: mMarPad,
                                bgroundColor: bgroundColor,
                                itemColor: itemColor,
                                buttonPlusMinus: ButtonPlusMinus.plus,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: StandardCard(
                      buttonColor: buttonColor,
                      xMarPad: sMarPad,
                      widget: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            age.toUpperCase(),
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                    color: itemColor,
                                    fontWeight: FontWeight.w600),
                          ),
                          Text(
                            ageNumber.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                    color: itemColor,
                                    fontWeight: FontWeight.w600),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleButton(
                                  function: () {
                                    setState(() {
                                      ageNumber--;
                                    });
                                  },
                                  xMarPad: mMarPad,
                                  bgroundColor: bgroundColor,
                                  itemColor: itemColor,
                                  buttonPlusMinus: ButtonPlusMinus.minus),
                              CircleButton(
                                function: () {
                                  setState(() {
                                    ageNumber++;
                                  });
                                },
                                xMarPad: mMarPad,
                                bgroundColor: bgroundColor,
                                itemColor: itemColor,
                                buttonPlusMinus: ButtonPlusMinus.plus,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: InkWell(
                onTap: () {
                  resultCalculator = ResultCalculator(
                      height: heightNumber, weight: weightNumber);

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ResultScreen(
                        title: resultCalculator.getTitle(),
                        result: resultCalculator.getBMI(),
                        suggestion: resultCalculator.getSuggestion());
                  }));
                },
                child: Container(
                  color: bottomButtonColor,
                  child: Center(
                    child: Text(
                      calculate.toUpperCase(),
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
