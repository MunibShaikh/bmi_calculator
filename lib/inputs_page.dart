import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'OptionsContainer file.dart';
import 'GenderIconsCol file.dart';
import 'constantProp.dart';
import 'package:bmi_calculator/Resultscr.dart';
import 'CalcFunc.dart';
//import 'package:line_awesome_flutter/line_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

int sliderHeight = 180;
int incDecWeight = 52;
int incDecAge = 25;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: OptionsContainer(
                    pressFunc: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    c: selectedGender == Gender.male
                        ? activeColor
                        : deActiveColor,
                    cardWidget: GenderIconsCol(
                        iconsData: FontAwesomeIcons.mars, label: "MALE"),
                  ),
                ),
                Expanded(
                  child: OptionsContainer(
                    pressFunc: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    c: selectedGender == Gender.female
                        ? activeColor
                        : deActiveColor,
                    cardWidget: GenderIconsCol(
                        iconsData: FontAwesomeIcons.venus, label: "FEMALE"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: OptionsContainer(
              c: Color(0xFF6a4b70),
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: cLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        sliderHeight.toString(),
                        style: dataValue,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "CM",
                        style: cLabelStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: sliderHeight.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        sliderHeight = newValue.round();
                      });
                    },
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFF946e9c),
                    inactiveColor: Color(0xFF4b344f),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: OptionsContainer(
                    c: Color(0xFF6a4b70),
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: cLabelStyle,
                        ),
                        Text(
                          incDecWeight.toString(),
                          style: dataValue,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IncDecBtn(
                              iconData: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  if (incDecWeight < 2) {
                                    incDecWeight = 0;
                                  } else {
                                    incDecWeight--;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            IncDecBtn(
                              iconData: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  incDecWeight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: OptionsContainer(
                    c: Color(0xFF6a4b70),
                    cardWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: cLabelStyle,
                        ),
                        Text(
                          incDecAge.toString(),
                          style: dataValue,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IncDecBtn(
                              iconData: FontAwesomeIcons.minus,
                              onPress: () {
                                setState(() {
                                  if (incDecAge < 2) {
                                    incDecAge = 0;
                                  } else {
                                    incDecAge--;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            IncDecBtn(
                              iconData: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  incDecAge++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalcFunc _calcFunc =
                  CalcFunc(height: sliderHeight, weight: incDecWeight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultAct(
                    bmiResult: _calcFunc.calculateBMI(),
                    resultText: _calcFunc.getResult(),
                    opinion: _calcFunc.getOpinion(),
                  ),
                ),
              );
            },
            child: Container(
              color: Color(0xFFEB1555),
              height: 53,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(
                  "Calculate",
                  style: calcStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//6a4b70
